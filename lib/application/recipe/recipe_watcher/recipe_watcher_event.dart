part of 'recipe_watcher_bloc.dart';

@freezed
class RecipeWatcherEvent with _$RecipeWatcherEvent {
  const factory RecipeWatcherEvent.watchAllStarted({required bool isLocalDB}) =
      WatchAllStarted;
  const factory RecipeWatcherEvent.recipesReceived(
      Either<RecipeFailure, KtList<Recipe>> failureOrRecipes) = RecipesReceived;
}
