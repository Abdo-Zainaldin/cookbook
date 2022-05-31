part of 'recipe_form_bloc.dart';

@freezed
class RecipeFormState with _$RecipeFormState {
  const factory RecipeFormState({
    required Recipe recipe,
    required Recipe initialRecipe,
    required int creatingRecipePageIndex,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isCreating,
    required bool isSaving,
    required bool successfullySaved,
    required Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _RecipeFormState;
  factory RecipeFormState.initial() => RecipeFormState(
        recipe: Recipe.empty(),
        initialRecipe: Recipe.empty(),
        creatingRecipePageIndex: 0,
        showErrorMessages: false,
        isEditing: true,
        isCreating: false,
        isSaving: false,
        successfullySaved: false,
        saveFailureOrSuccessOption: none(),
      );
}
