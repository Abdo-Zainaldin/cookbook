import 'package:bloc/bloc.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';

import '../../presentation/recipes/recipe_forms/misc/recipe_items_presentation_classes.dart';

part 'recipe_form_bloc.freezed.dart';
part 'recipe_form_event.dart';
part 'recipe_form_state.dart';

@injectable
class RecipeFormBloc extends Bloc<RecipeFormEvent, RecipeFormState> {
  final IRecipeRepository _recipeRepository;
  RecipeFormBloc(
    this._recipeRepository,
  ) : super(RecipeFormState.initial()) {
    on<Initialized>((event, emit) {
      emit(RecipeFormState.initial().copyWith(
        recipe: event.initialRecipe,
        isEditing: !state.isEditing,
      ));
    });
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
        recipe: state.recipe.copyWith(name: RecipeName(event.nameStr)),
        saveFailureOrSuccessOption: none(),
      ));
    });
    on<IngredientsChanged>((event, emit) {
      emit(state.copyWith(
        recipe: state.recipe.copyWith(
          ingredients: ListItem(
              event.ingredients.map((primitive) => primitive.toDomain())),
        ),
        saveFailureOrSuccessOption: none(),
      ));
    });
    on<StepsChanged>((event, emit) {
      emit(state.copyWith(
        recipe: state.recipe.copyWith(
          steps: ListItem(event.steps.map((primitive) => primitive.toDomain())),
        ),
        saveFailureOrSuccessOption: none(),
      ));
    });
    on<Saved>((event, emit) async {
      Either<RecipeFailure, Unit>? failureOrSuccess;

      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));

      if (state.recipe.failureOption.isNone()) {
        failureOrSuccess = await _recipeRepository.update(state.recipe);
      }

      emit(state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
