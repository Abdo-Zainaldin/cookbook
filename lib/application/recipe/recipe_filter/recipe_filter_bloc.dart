import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/recipes/recipe.dart';

part 'recipe_filter_event.dart';
part 'recipe_filter_state.dart';
part 'recipe_filter_bloc.freezed.dart';

class RecipeFilterBloc extends Bloc<RecipeFilterEvent, RecipeFilterState> {
  RecipeFilterBloc() : super(RecipeFilterState.initial()) {
    on<InitialRecipesChanged>((event, emit) {
      // Remove none valid recipes if they exists
      KtList<Recipe> recipes = const KtList.empty();
      for (var recipe in event.initialRecipes.iter) {
        recipe.failureOption.fold(() {
          recipes = recipes.plusElement(recipe);
        }, (_) {});
      }

      emit(state.copyWith(
        initialRecipes: recipes,
      ));
      add(FilterIngredientsChanged(state.filterIngdredients));
    });

    on<FilterIngredientsChanged>((event, emit) {
      final filteredRecipes = filterRecipes(
        recipes: state.initialRecipes,
        filterIngredients: event.ingredients,
      );

      // return initial recipes if there are no ingredients to filter the recipes on it
      final maybefilteredRecies =
          event.ingredients.isEmpty ? state.initialRecipes : filteredRecipes;

      emit(state.copyWith(
        filterIngdredients: event.ingredients,
        filteredRecipes: maybefilteredRecies,
      ));
    });
  }

  // Recipes filter function
  // it may not be the best solution to filter the recipes
  KtList<Recipe> filterRecipes({
    required KtList<Recipe> recipes,
    required List<String> filterIngredients,
  }) {
    List<bool> filteredResults = [];

    // set all filter ingredients strings to lower case
    // because we don't care about case sensitivity when filtering the recipes
    List filterIngredientsList = List.generate(filterIngredients.length,
        (index) => filterIngredients[index].toLowerCase());

    for (Recipe recipe in recipes.iter.toList()) {
      List filteredRecipeIngredientsResults = [];

      bool isFilterIngredientsContainsOneOfTheIngredientsInTheRecipe =
          filterIngredientsList
              .contains(recipe.ingredients.getOrCrash()[0].name.getOrCrash());

      if (!isFilterIngredientsContainsOneOfTheIngredientsInTheRecipe) {
        filteredResults.add(false);
        continue;
      }

      // set all recipe ingredients strings to lower case
      // because we don't care about case sensitivity when filtering the recipes
      List recipeIngredients = List.generate(
          recipe.ingredients.length,
          (index) => recipe.ingredients
              .getOrCrash()[index]
              .name
              .getOrCrash()
              .toLowerCase());

      for (var recipeIngredient in recipeIngredients) {
        if (!filterIngredientsList.contains(recipeIngredient)) {
          filteredRecipeIngredientsResults.add(false);
        }
      }

      bool isRecipeHasNoneMatchIngredient =
          filteredRecipeIngredientsResults.contains(false);

      if (isRecipeHasNoneMatchIngredient) {
        filteredResults.add(false);
      } else {
        filteredResults.add(true);
      }
    }

    List<Recipe> result = [];

    // add only the recipes that their indexes in the filteredResults list are true 'matched' to the result
    List.generate(recipes.size,
        (index) => filteredResults[index] ? result.add(recipes[index]) : null);

    return result.toImmutableList();
  }
}
