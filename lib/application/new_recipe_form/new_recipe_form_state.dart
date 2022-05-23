part of 'new_recipe_form_bloc.dart';

@freezed
class NewRecipeFormState with _$NewRecipeFormState {
  const factory NewRecipeFormState({
    required Recipe recipe,
    required KtList<IngredientItemPrimitive> ingredientItemPrimitives,
    required KtList<StepItemPrimitive> stepItemPrimitives,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<RecipeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NewRecipeFormState;
  factory NewRecipeFormState.initial() => NewRecipeFormState(
        recipe: Recipe.empty(),
        ingredientItemPrimitives: const KtList.empty(),
        stepItemPrimitives: const KtList.empty(),
        showErrorMessages: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
