import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookbook_app/domain/settings/settings_failure.dart';
import 'package:cookbook_app/infrastructure/recipes/firestore_db_service/firestore_db_service.dart';
import 'package:cookbook_app/infrastructure/recipes/recipe_local_db_service/recipe_local_db_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';

@LazySingleton(as: IRecipeRepository)
class RecipeRepository implements IRecipeRepository {
  final FirebaseFirestore firestore;

  RecipeRepository(this.firestore);

  @override
  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll(
      {bool isLocalDB = false}) async* {
    if (isLocalDB) {
      yield* RecipeLocalDBService().watchAll();
    } else {
      yield* FireStoreDBService(firestore).watchAll();
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> create(Recipe recipe,
      {bool isLocalDB = false}) async {
    if (isLocalDB) {
      return await RecipeLocalDBService().create(recipe);
    } else {
      return await FireStoreDBService(firestore).create(recipe);
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> update(Recipe recipe,
      {bool isLocalDB = false}) async {
    if (isLocalDB) {
      return await RecipeLocalDBService().update(recipe);
    } else {
      return await FireStoreDBService(firestore).update(recipe);
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe,
      {bool isLocalDB = false}) async {
    if (isLocalDB) {
      return await RecipeLocalDBService().delete(recipe);
    } else {
      return await FireStoreDBService(firestore).delete(recipe);
    }
  }

  @override
  Future<Either<SettingsFailure, Unit>> uploadLocalSavedRecipesToCloud() async {
    final recipesFailureOrSuccess = await RecipeLocalDBService().getAll();

    return recipesFailureOrSuccess.fold(
      (f) => left(f),
      (localRecipesList) async {
        final possibleRecipesCreationFailures = await Future.wait(
          localRecipesList
              .map(
                (recipe) async {
                  final Either<RecipeFailure, Unit> possibleFailure =
                      await create(recipe);
                  return possibleFailure;
                },
              )
              .iter
              .toList(),
        );
        // return a failure if one of the recipes failed to be created/added on the cloud DB
        // we don't care about the recipes that got created/added to the DB, the user will be notified
        return possibleRecipesCreationFailures
            .toImmutableList()
            .filter((o) => o.isLeft())
            // If we can't get the 0th element, the list is empty. In such a case, it's valid.
            .getOrElse(0, (_) => right(unit))
            .fold(
                (_) => left(
                    const SettingsFailure.unableToUploadeLocalRecipesToCloud()),
                (_) => right(unit));
      },
    );
  }
}
