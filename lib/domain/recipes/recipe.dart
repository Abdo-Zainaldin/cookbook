import 'package:cookbook_app/domain/core/failure.dart';
import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:cookbook_app/domain/recipes/ingredient_item.dart';
import 'package:cookbook_app/domain/recipes/step_item.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'recipe.freezed.dart';

@freezed
abstract class Recipe with _$Recipe {
  const Recipe._();
  const factory Recipe({
    required UniqueId id,
    required RecipeName name,
    required ListItem<IngredientItem> ingredients,
    required ListItem<StepItem> steps,
  }) = _Recipe;

  factory Recipe.empty() => Recipe(
        id: UniqueId(),
        name: RecipeName(''),
        ingredients: ListItem(const KtList.empty()),
        steps: ListItem(const KtList.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.filureOrUnit
        .andThen(ingredients.filureOrUnit)
        .andThen(ingredients.value.fold(
          (f) => left(f),
          (_ingredients) => _ingredients
              .map((ingredientItem) => ingredientItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        ))
        .andThen(steps.filureOrUnit)
        .andThen(steps.value.fold(
          (f) => left(f),
          (_steps) => _steps
              .map((stepItem) => stepItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        ))
        .fold((f) => some(f), (_) => none());
  }
}
