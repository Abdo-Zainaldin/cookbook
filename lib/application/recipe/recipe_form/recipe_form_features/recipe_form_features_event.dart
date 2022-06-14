part of 'recipe_form_features_bloc.dart';

@freezed
class RecipeFormFeaturesEvent with _$RecipeFormFeaturesEvent {
  const factory RecipeFormFeaturesEvent.toggleEditingState() =
      ToggleEditingState;
  const factory RecipeFormFeaturesEvent.toggleLiveCookingState() =
      ToggleLiveCookingState;
  const factory RecipeFormFeaturesEvent.toggleActiveFeaturesState() =
      ToggleActiveFeaturesState;
  const factory RecipeFormFeaturesEvent.copyRecipe(Recipe recipe) = CopyRecipe;
}
