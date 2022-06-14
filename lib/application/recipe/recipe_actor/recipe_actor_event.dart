part of 'recipe_actor_bloc.dart';

@freezed
class RecipeActorEvent with _$RecipeActorEvent {
  const factory RecipeActorEvent.deleted(Recipe recipe,
      {required bool isLocalDB}) = Deleted;
}
