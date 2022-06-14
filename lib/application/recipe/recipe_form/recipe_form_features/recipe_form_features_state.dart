part of 'recipe_form_features_bloc.dart';

@freezed
class RecipeFormFeaturesState with _$RecipeFormFeaturesState {
  const factory RecipeFormFeaturesState({
    required bool isAnyFeatureActive,
    required bool isEditing,
    required bool isLiveCooking,
  }) = _RecipeFormFeaturesState;
  factory RecipeFormFeaturesState.initial() => const RecipeFormFeaturesState(
        isAnyFeatureActive: false,
        isEditing: false,
        isLiveCooking: false,
      );
}
