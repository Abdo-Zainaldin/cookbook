import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';

import '../../../presentation/recipes/recipe_form/misc/recipe_items_presentation_classes.dart';

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
      emit(
        // if there was no initialRecipe that means the user will create a recipe
        event.initialRecipeOption.fold(
          () => state.copyWith(
            isCreating: true,
            isLocalDB: event.isLocalDB,
          ),
          (initialRecipe) => state.copyWith(
            recipe: initialRecipe,
            initialRecipe: initialRecipe,
            isEditing: !state.isEditing,
            isLocalDB: event.isLocalDB,
          ),
        ),
      );
    });

    on<EditingFormStateChanged>((event, emit) {
      // if the recipe is not saved that means the user canceled editing.
      // In such a case, initial recipe returned
      final recipeState = state.saveFailureOrSuccessOption.isSome()
          ? state.recipe
          : state.initialRecipe;

      emit(
        state.copyWith(
          recipe: recipeState,
          initialRecipe: recipeState,
          isEditing: event.isEditing,
        ),
      );
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

      bool currentRecipeHasNoneFailures = state.recipe.failureOption.isNone();
      if (state.isCreating && currentRecipeHasNoneFailures) {
        failureOrSuccess = await _recipeRepository.create(
          state.recipe,
          isLocalDB: state.isLocalDB,
        );
      } else if (state.isEditing && currentRecipeHasNoneFailures) {
        failureOrSuccess = await _recipeRepository.update(
          state.recipe,
          isLocalDB: state.isLocalDB,
        );
      }

      emit(state.copyWith(
        // if the recipe is successfully saved exit edit mode by setting state.isEditing to false
        isEditing: optionOf(failureOrSuccess).isNone(),
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
