import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';

import '../../../domain/recipes/recipe.dart';

part 'recipe_watcher_bloc.freezed.dart';
part 'recipe_watcher_event.dart';
part 'recipe_watcher_state.dart';

@injectable
class RecipeWatcherBloc extends Bloc<RecipeWatcherEvent, RecipeWatcherState> {
  final IRecipeRepository _recipeRepository;

  StreamSubscription<Either<RecipeFailure, KtList<Recipe>>>?
      recipeStreamSubscription;

  RecipeWatcherBloc(
    this._recipeRepository,
  ) : super(const _Initial()) {
    on<WatchAllStarted>((event, emit) async {
      emit(const RecipeWatcherState.loadInProgress());

      await recipeStreamSubscription?.cancel();
      recipeStreamSubscription = _recipeRepository
          .watchAll(isLocalDB: event.isLocalDB)
          .listen((failureOrRecipes) => add(RecipesReceived(failureOrRecipes)));
    });

    on<RecipesReceived>((event, emit) {
      event.failureOrRecipes.fold(
        (f) => emit(RecipeWatcherState.loadFailure(f)),
        (recipes) => emit(RecipeWatcherState.loadSuccess(recipes)),
      );
    });
  }

  @override
  Future<void> close() async {
    await recipeStreamSubscription?.cancel();
    return super.close();
  }
}
