import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookbook_app/infrastructure/recipes/local_db_service/recipe_db_service.dart';
import 'package:cookbook_app/infrastructure/recipes/recipe_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'package:cookbook_app/domain/recipes/i_recipe_repository.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/recipe_failure.dart';
import '../core/firestore_helpers.dart';

@LazySingleton(as: IRecipeRepository)
class RecipeRepository implements IRecipeRepository {
  final FirebaseFirestore _firestore;

  RecipeRepository(this._firestore);

  @override
  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll(
      {bool localDB = false}) async* {
    if (localDB) {
      yield* RecipeLocalDBService().watchAll();
    } else {
      final userDoc = await _firestore.userDocument();

      yield* userDoc.recipeCollection
          .orderBy('serverTimeStamp', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<RecipeFailure, KtList<Recipe>>(
              snapshot.docs
                  .map((doc) => RecipeDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e, stackTrace) {
        if (e is FirebaseException &&
            e.message!.contains('permission-denied')) {
          return left(const RecipeFailure.insufficientPermission());
        } else {
          return left(const RecipeFailure.unexpected());
        }
      });
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> create(Recipe recipe,
      {bool localDB = false}) async {
    if (localDB) {
      return await RecipeLocalDBService().create(recipe);
    } else {
      try {
        final userDoc = await _firestore.userDocument();
        final recipeDto = RecipeDto.fromDomain(recipe);

        await userDoc.recipeCollection
            .doc(recipeDto.id)
            .set(recipeDto.toJson());

        return right(unit);
      } on FirebaseException catch (e) {
        if (e.message!.contains('permission-denied')) {
          return left(const RecipeFailure.insufficientPermission());
        } else {
          return left(const RecipeFailure.unexpected());
        }
      }
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> update(Recipe recipe,
      {bool localDB = false}) async {
    if (localDB) {
      return await RecipeLocalDBService().update(recipe);
    } else {
      try {
        final userDoc = await _firestore.userDocument();
        final recipeDto = RecipeDto.fromDomain(recipe);

        await userDoc.recipeCollection
            .doc(recipeDto.id)
            .update(recipeDto.toJson());

        return right(unit);
      } on FirebaseException catch (e) {
        if (e.message!.contains('permission-denied')) {
          return left(const RecipeFailure.insufficientPermission());
        } else if (e.message!.contains('not-found')) {
          return left(const RecipeFailure.unableToUpdate());
        } else {
          return left(const RecipeFailure.unexpected());
        }
      }
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe,
      {bool localDB = false}) async {
    if (localDB) {
      return await RecipeLocalDBService().delete(recipe);
    } else {
      try {
        final userDoc = await _firestore.userDocument();
        final recipeId = recipe.id.getOrCrash();

        await userDoc.recipeCollection.doc(recipeId).delete();

        return right(unit);
      } on FirebaseException catch (e) {
        if (e.message!.contains('permission-denied')) {
          return left(const RecipeFailure.insufficientPermission());
        } else if (e.message!.contains('not-found')) {
          return left(const RecipeFailure.unableToUpdate());
        } else {
          return left(const RecipeFailure.unexpected());
        }
      }
    }
  }

  @override
  Future<Either<RecipeFailure, Unit>> initRecipesLocalDB() {
    return RecipeLocalDBService().init();
  }
}
