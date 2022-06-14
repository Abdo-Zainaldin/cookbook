part of 'recipe_filter_bloc.dart';

@freezed
class RecipeFilterState with _$RecipeFilterState {
  const factory RecipeFilterState({
    required KtList<Recipe> initialRecipes,
    required List<String> filterIngdredients,
    required KtList<Recipe> filteredRecipes,
  }) = _RecipeFilterState;
  factory RecipeFilterState.initial() => const RecipeFilterState(
        initialRecipes: KtList.empty(),
        filterIngdredients: [],
        filteredRecipes: KtList.empty(),
      );
}
