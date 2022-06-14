import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:cookbook_app/domain/recipes/ingredient_item.dart';
import 'package:cookbook_app/domain/recipes/recipe.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/recipes/step_item.dart';

part 'recipe_dtos.freezed.dart';
part 'recipe_dtos.g.dart';

@freezed
abstract class RecipeDto implements _$RecipeDto {
  const RecipeDto._();

  const factory RecipeDto({
    required String id,
    required String name,
    required List<IngredientItemDto> ingredients,
    required List<StepItemDto> steps,
    @ServerTimeStampConverter() serverTimeStamp,
  }) = _RecipeDto;

  factory RecipeDto.fromDomain(Recipe recipe) {
    return RecipeDto(
      id: recipe.id.getOrCrash(),
      name: recipe.name.getOrCrash(),
      ingredients: recipe.ingredients
          .getOrCrash()
          .map(
            (ingredientItem) => IngredientItemDto.fromDomain(ingredientItem),
          )
          .asList(),
      steps: recipe.steps
          .getOrCrash()
          .map(
            (stepItem) => StepItemDto.fromDomain(stepItem),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Recipe toDomain() {
    return Recipe(
      id: UniqueId.fromUniqueString(id),
      name: RecipeName(name),
      ingredients: ListItem(ingredients
          .map((ingredient) => ingredient.toDomain())
          .toImmutableList()),
      steps: ListItem(steps.map((step) => step.toDomain()).toImmutableList()),
    );
  }

  factory RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDtoFromJson(json);

  factory RecipeDto.fromFirestore(DocumentSnapshot doc) {
    return RecipeDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class IngredientItemDto implements _$IngredientItemDto {
  const IngredientItemDto._();

  const factory IngredientItemDto({
    required String id,
    required String name,
  }) = _IngredientItemDto;

  factory IngredientItemDto.fromDomain(IngredientItem ingredientItem) {
    return IngredientItemDto(
      id: ingredientItem.id.getOrCrash(),
      name: ingredientItem.name.getOrCrash(),
    );
  }

  IngredientItem toDomain() {
    return IngredientItem(
      id: UniqueId.fromUniqueString(id),
      name: IngredientName(name),
    );
  }

  factory IngredientItemDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientItemDtoFromJson(json);
}

@freezed
abstract class StepItemDto implements _$StepItemDto {
  const StepItemDto._();

  const factory StepItemDto({
    required String id,
    required String body,
  }) = _StepItemDto;

  factory StepItemDto.fromDomain(StepItem stepItem) {
    return StepItemDto(
      id: stepItem.id.getOrCrash(),
      body: stepItem.body.getOrCrash(),
    );
  }

  StepItem toDomain() {
    return StepItem(
      id: UniqueId.fromUniqueString(id),
      body: StepBody(body),
    );
  }

  factory StepItemDto.fromJson(Map<String, dynamic> json) =>
      _$StepItemDtoFromJson(json);
}
