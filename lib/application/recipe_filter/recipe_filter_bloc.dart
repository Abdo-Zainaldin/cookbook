import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/recipes/recipe.dart';

part 'recipe_filter_event.dart';
part 'recipe_filter_state.dart';
part 'recipe_filter_bloc.freezed.dart';

class RecipeFilterBloc extends Bloc<RecipeFilterEvent, RecipeFilterState> {
  RecipeFilterBloc() : super(RecipeFilterState.initial()) {
    on<InitialRecipesChanged>((event, emit) {
      // Remove none valid recipes if they exists
      KtList<Recipe> recipes = const KtList.empty();
      for (var recipe in event.recipes.iter) {
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
      emit(state.copyWith(
        filterIngdredients: event.ingredients,
        filteredRecipes: filterRecipes(state.initialRecipes, event.ingredients),
      ));
    });
  }

  // Recipes filter function
  KtList<Recipe> filterRecipes(
      KtList<Recipe> recipes, List<String> filterIngredients) {
    List<bool> filteredResults = [];

    List filteredRecipeIngredients = [];

    List filterIngredientsList = List.generate(filterIngredients.length,
        (index) => filterIngredients[index].toLowerCase());

    for (Recipe recipe in recipes.iter.toList()) {
      filteredRecipeIngredients = [];
      if (filterIngredientsList
          .contains(recipe.ingredients.getOrCrash()[0].name.getOrCrash())) {
        for (var recipeIngredient in List.generate(
            recipe.ingredients.length,
            (index) => recipe.ingredients
                .getOrCrash()[index]
                .name
                .getOrCrash()
                .toLowerCase())) {
          if (!filterIngredientsList.contains(recipeIngredient)) {
            filteredRecipeIngredients.add(false);
          }
        }
        if (filteredRecipeIngredients.contains(false)) {
          filteredResults.add(false);
        } else {
          filteredResults.add(true);
        }
      } else {
        filteredResults.add(false);
      }
    }
    List<Recipe> result = [];

    List.generate(recipes.size,
        (index) => filteredResults[index] ? result.add(recipes[index]) : null);

    return result.toImmutableList();
  }
}
