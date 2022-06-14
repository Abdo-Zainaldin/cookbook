import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/recipes/recipe.dart';
import '../../../domain/recipes/recipe_failure.dart';
import '../recipe_dtos.dart';
import '../../core/firestore_helpers.dart';

class FireStoreDBService {
  final FirebaseFirestore firestore;

  FireStoreDBService(this.firestore);

  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll() async* {
    final userDoc = await firestore.userDocument();

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
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const RecipeFailure.insufficientPermission());
      } else {
        return left(const RecipeFailure.unexpected());
      }
    });
  }

  Future<Either<RecipeFailure, Unit>> create(Recipe recipe) async {
    try {
      final userDoc = await firestore.userDocument();
      final recipeDto = RecipeDto.fromDomain(recipe);

      await userDoc.recipeCollection.doc(recipeDto.id).set(recipeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const RecipeFailure.insufficientPermission());
      } else {
        return left(const RecipeFailure.unexpected());
      }
    }
  }

  Future<Either<RecipeFailure, Unit>> update(Recipe recipe) async {
    try {
      final userDoc = await firestore.userDocument();
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

  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe) async {
    try {
      final userDoc = await firestore.userDocument();
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
