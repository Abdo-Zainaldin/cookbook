part of 'recipe_watcher_bloc.dart';

@freezed
class RecipeWatcherState with _$RecipeWatcherState {
  const factory RecipeWatcherState.initial() = _Initial;
  const factory RecipeWatcherState.loadInProgress() = _LoadInProgress;
  const factory RecipeWatcherState.loadSuccess(KtList<Recipe> recipes) =
      _LoadSuccess;
  const factory RecipeWatcherState.loadFailure(RecipeFailure recipeFailure) =
      _LoadFailure;
}
