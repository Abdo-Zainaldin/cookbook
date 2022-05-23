import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:cookbook_app/presentation/recipes/recipe_forms/misc/recipe_items_presentation_classes.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/recipes/recipe.dart';
import '../../domain/recipes/recipe_failure.dart';

part 'new_recipe_form_bloc.freezed.dart';
part 'new_recipe_form_event.dart';
part 'new_recipe_form_state.dart';

@injectable
class NewRecipeFormBloc extends Bloc<NewRecipeFormEvent, NewRecipeFormState> {
  final IRecipeRepository _recipeRepository;
  NewRecipeFormBloc(
    this._recipeRepository,
  ) : super(NewRecipeFormState.initial()) {
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
        recipe: state.recipe.copyWith(name: RecipeName(event.nameStr)),
        saveFailureOrSuccessOption: none(),
      ));
    });
    on<RecipeItemAdded>((event, emit) {
      if (event.recipeItem is IngredientItemPrimitive) {
        emit(state.copyWith(
          ingredientItemPrimitives: state.ingredientItemPrimitives
              .plusElement(IngredientItemPrimitive.empty()),
          saveFailureOrSuccessOption: none(),
        ));
      } else if (event.recipeItem is StepItemPrimitive) {
        emit(state.copyWith(
          stepItemPrimitives:
              state.stepItemPrimitives.plusElement(StepItemPrimitive.empty()),
          saveFailureOrSuccessOption: none(),
        ));
      }
    });
    on<RecipeItemRemoved>((event, emit) {
      if (event.recipeItem is IngredientItemPrimitive) {
        emit(state.copyWith(
          ingredientItemPrimitives:
              state.ingredientItemPrimitives.minusElement(event.recipeItem),
          saveFailureOrSuccessOption: none(),
        ));
      } else if (event.recipeItem is StepItemPrimitive) {
        emit(state.copyWith(
          stepItemPrimitives:
              state.stepItemPrimitives.minusElement(event.recipeItem),
          saveFailureOrSuccessOption: none(),
        ));
      }
    });
    on<RecipeItemChanged>((event, emit) {
      if (event.recipeItem is IngredientItemPrimitive) {
        emit(state.copyWith(
          ingredientItemPrimitives: state.ingredientItemPrimitives.map(
            (ingredient) => ingredient == event.recipeItem
                ? ingredient.copyWith(name: event.body)
                : ingredient,
          ),
          saveFailureOrSuccessOption: none(),
        ));
      } else if (event.recipeItem is StepItemPrimitive) {
        emit(state.copyWith(
          stepItemPrimitives: state.stepItemPrimitives.map(
            (step) => step == event.recipeItem
                ? step.copyWith(body: event.body)
                : step,
          ),
          saveFailureOrSuccessOption: none(),
        ));
      }
    });
    on<Saved>((event, emit) async {
      Either<RecipeFailure, Unit>? failureOrSuccess;

      emit(state.copyWith(
        recipe: state.recipe.copyWith(
          ingredients: ListItem(state.ingredientItemPrimitives
              .map((ingredient) => ingredient.toDomain())),
          steps:
              ListItem(state.stepItemPrimitives.map((step) => step.toDomain())),
        ),
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));

      if (state.recipe.failureOption.isNone()) {
        failureOrSuccess = await _recipeRepository.create(state.recipe);
      }
      log(state.recipe.failureOption.toString());

      emit(state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
