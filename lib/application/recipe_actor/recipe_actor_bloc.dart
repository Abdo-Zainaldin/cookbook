import 'package:bloc/bloc.dart';
import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recipe_actor_event.dart';
part 'recipe_actor_state.dart';
part 'recipe_actor_bloc.freezed.dart';

@injectable
class RecipeActorBloc extends Bloc<RecipeActorEvent, RecipeActorState> {
  final IRecipeRepository _recipeRepository;

  RecipeActorBloc(this._recipeRepository) : super(const _Initial()) {
    on<Deleted>((event, emit) async {
      emit(const RecipeActorState.actionInProgress());

      final possibleFialure = await _recipeRepository.delete(event.recipe);

      possibleFialure.fold(
        (f) => emit(RecipeActorState.deleteFailure(f)),
        (r) => emit(const RecipeActorState.deleteSuccess()),
      );
    });
  }
}
