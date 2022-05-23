part of 'recipe_watcher_bloc.dart';

@freezed
class RecipeWatcherEvent with _$RecipeWatcherEvent {
  const factory RecipeWatcherEvent.watchAllStarted() = WatchAllStarted;
  const factory RecipeWatcherEvent.recipeReceived(
      Either<RecipeFailure, KtList<Recipe>> failureOrRecipes) = RecipeReceived;
}
