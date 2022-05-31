import 'package:cookbook_app/infrastructure/recipes/local_db_service/recipe_db_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/recipes/recipe.dart';
import '../../../domain/recipes/recipe_failure.dart';
import '../recipe_dtos.dart';

class RecipeLocalDBService {
  static const String recipeBoxName = 'Recipes';

  Future<Either<RecipeFailure, Unit>> init() async {
    try {
      Hive.registerAdapter(RecipeLocalDBModelAdapter());
      await Hive.openBox<RecipeLocalDBModel>(recipeBoxName);
      return right(unit);
    } on PlatformException {
      return left(const RecipeFailure.unexpected());
    }
  }

  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll() async* {
    final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);

    yield* recipeBox
        .watch()
        .map(
          (snapshot) => right<RecipeFailure, KtList<Recipe>>(
            snapshot.value
                .map((recipe) => RecipeDto.fromJson(recipe).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      return left(const RecipeFailure.unexpected());
    });
  }

  Future<Either<RecipeFailure, Unit>> create(Recipe recipe) async {
    try {
      final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);
      final recipeDto = RecipeDto.fromDomain(recipe);

      recipeBox.put(
        recipeDto.id,
        RecipeLocalDBModel.fromJson(recipeDto.toJson()),
      );

      return right(unit);
    } on PlatformException {
      return left(const RecipeFailure.unexpected());
    }
  }

  Future<Either<RecipeFailure, Unit>> update(Recipe recipe) async {
    try {
      final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);
      final recipeDto = RecipeDto.fromDomain(recipe);

      recipeBox.put(
        recipe.id,
        RecipeLocalDBModel.fromJson(recipeDto.toJson()),
      );

      return right(unit);
    } on PlatformException {
      return left(const RecipeFailure.unableToUpdate());
    }
  }

  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe) async {
    try {
      final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);
      final recipeId = recipe.id.getOrCrash();

      await recipeBox.delete(recipeId);

      return right(unit);
    } on PlatformException {
      return left(const RecipeFailure.unexpected());
    }
  }
}
