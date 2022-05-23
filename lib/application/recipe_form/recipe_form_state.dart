part of 'recipe_form_bloc.dart';

@freezed
class RecipeFormState with _$RecipeFormState {
  const factory RecipeFormState({
    required Recipe recipe,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _RecipeFormState;
  factory RecipeFormState.initial() => RecipeFormState(
        recipe: Recipe.empty(),
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
