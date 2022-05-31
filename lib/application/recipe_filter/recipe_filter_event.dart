part of 'recipe_filter_bloc.dart';

@freezed
class RecipeFilterEvent with _$RecipeFilterEvent {
  const factory RecipeFilterEvent.initialRecipesChanged(
      KtList<Recipe> recipes) = InitialRecipesChanged;
  const factory RecipeFilterEvent.filterIngredientsChanged(
      List<String> ingredients) = FilterIngredientsChanged;
}
