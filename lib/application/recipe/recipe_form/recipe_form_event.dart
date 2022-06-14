part of 'recipe_form_bloc.dart';

@freezed
class RecipeFormEvent with _$RecipeFormEvent {
  const factory RecipeFormEvent.initialized(Option<Recipe> initialRecipeOption,
      {required bool isLocalDB}) = Initialized;
  const factory RecipeFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory RecipeFormEvent.ingredientsChanged(
      KtList<IngredientItemPrimitive> ingredients) = IngredientsChanged;
  const factory RecipeFormEvent.stepsChanged(KtList<StepItemPrimitive> steps) =
      StepsChanged;
  const factory RecipeFormEvent.editingFormStateChanged(bool isEditing) =
      EditingFormStateChanged;
  const factory RecipeFormEvent.saved() = Saved;
}
