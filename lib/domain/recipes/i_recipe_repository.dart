import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'recipe_failure.dart';

abstract class IRecipeRepository {
  Future<Either<RecipeFailure, Unit>> initRecipesLocalDB();
  Stream<Either<RecipeFailure, KtList<Recipe>>> watchAll(
      {bool localDB = false});
  Future<Either<RecipeFailure, Unit>> create(Recipe recipe,
      {bool localDB = false});
  Future<Either<RecipeFailure, Unit>> update(Recipe recipe,
      {bool localDB = false});
  Future<Either<RecipeFailure, Unit>> delete(Recipe recipe,
      {bool localDB = false});
}
