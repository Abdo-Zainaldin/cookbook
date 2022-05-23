import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'recipe_failure.dart';

abstract class IRecipeRepository {
  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll();
  Future<Either<RecipeFailure, Unit>> create(Recipe recipe);
  Future<Either<RecipeFailure, Unit>> update(Recipe recipe);
  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe);
}
