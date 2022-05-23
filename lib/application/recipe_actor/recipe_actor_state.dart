part of 'recipe_actor_bloc.dart';

@freezed
class RecipeActorState with _$RecipeActorState {
  const factory RecipeActorState.initial() = _Initial;
  const factory RecipeActorState.actionInProgress() = _ActionInProgress;
  const factory RecipeActorState.deleteSuccess() = _DeleteSuccess;
  const factory RecipeActorState.deleteFailure(RecipeFailure recipeFailure) =
      _DeleteFailure;
}
