part of 'new_recipe_form_bloc.dart';

@freezed
class NewRecipeFormEvent with _$NewRecipeFormEvent {
  const factory NewRecipeFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory NewRecipeFormEvent.recipeItemAdded(dynamic recipeItem) =
      RecipeItemAdded;
  const factory NewRecipeFormEvent.recipeItemRemoved(dynamic recipeItem) =
      RecipeItemRemoved;
  const factory NewRecipeFormEvent.recipeItemChanged(
      int index, dynamic recipeItem, String body) = RecipeItemChanged;
  const factory NewRecipeFormEvent.saved() = Saved;
}
