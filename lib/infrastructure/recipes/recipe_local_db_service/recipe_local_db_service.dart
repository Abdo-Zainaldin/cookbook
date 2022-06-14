import 'dart:async';

import 'package:cookbook_app/domain/settings/settings_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';
import 'package:listenable_stream/listenable_stream.dart';
import 'package:rxdart/rxdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/recipes/recipe.dart';
import '../../../domain/recipes/recipe_failure.dart';
import '../recipe_dtos.dart';
import 'recipe_local_db_model.dart';

class RecipeLocalDBService {
  static const String recipeBoxName = 'recipeBox';

  Future<Either<SettingsFailure, KtList<Recipe>>> getAll() async {
    try {
      await Hive.openBox<RecipeLocalDBModel>(recipeBoxName);
      final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);
      final List<RecipeLocalDBModel> recipesList = recipeBox.values.toList();
      KtList<Recipe> recipes = recipesList
          .map((recipe) => RecipeDto.fromJson(recipe.toJson()).toDomain())
          .toImmutableList();
      return right(recipes);
    } on PlatformException {
      return left(const SettingsFailure.unexpected());
    }
  }

  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll() async* {
    await Hive.openBox<RecipeLocalDBModel>(recipeBoxName);
    final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);

    // Here we yield initial snapshot of the data,
    // because hive packge dose not provide us with an initial snapshot when watching the database
    // by default like firestore
    yield right(recipeBox.values
        .toImmutableList()
        .sortedBy((recipe) => recipe.recipeDate)
        .reversed()
        .map((recipe) => RecipeDto.fromJson(recipe.toJson()).toDomain()));

    // listen to the recipeBox changes
    yield* recipeBox.listenable().toValueStream().map(
      (snapshot) {
        return right<RecipeFailure, KtList<Recipe>>(
          snapshot.values
              .toImmutableList()
              .sortedBy((recipe) => recipe.recipeDate)
              .reversed()
              .map(
                (recipe) => RecipeDto.fromJson(recipe.toJson()).toDomain(),
              ),
        );
      },
    ).onErrorReturnWith((e, stackTrace) {
      return left(const RecipeFailure.unexpected());
    });
  }

  Future<Either<RecipeFailure, Unit>> create(Recipe recipe) async {
    try {
      final recipeBox = Hive.box<RecipeLocalDBModel>(recipeBoxName);
      final recipeDto = RecipeDto.fromDomain(recipe);

      recipeBox.put(
        recipeDto.id.toString(),
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
        recipeDto.id.toString(),
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
