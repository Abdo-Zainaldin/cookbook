import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../domain/recipes/ingredient_item.dart';
import '../../../../../domain/recipes/step_item.dart';
import '../../../../../domain/recipes/value_objects.dart';

part 'recipe_items_presentation_classes.freezed.dart';

class FormIngredients extends ValueNotifier<KtList<IngredientItemPrimitive>> {
  FormIngredients() : super(emptyList<IngredientItemPrimitive>());
}

@freezed
abstract class IngredientItemPrimitive with _$IngredientItemPrimitive {
  const IngredientItemPrimitive._();
  const factory IngredientItemPrimitive({
    required UniqueId id,
    required String name,
  }) = _IngredientItemPrimitive;

  factory IngredientItemPrimitive.empty() => IngredientItemPrimitive(
        id: UniqueId(),
        name: '',
      );

  factory IngredientItemPrimitive.fromDomain(IngredientItem ingredientItem) {
    return IngredientItemPrimitive(
      id: ingredientItem.id,
      name: ingredientItem.name.getOrCrash(),
    );
  }

  IngredientItem toDomain() {
    return IngredientItem(
      id: id,
      name: IngredientName(name),
    );
  }
}

class FormSteps extends ValueNotifier<KtList<StepItemPrimitive>> {
  FormSteps() : super(emptyList<StepItemPrimitive>());
}

@freezed
abstract class StepItemPrimitive with _$StepItemPrimitive {
  const StepItemPrimitive._();
  const factory StepItemPrimitive({
    required UniqueId id,
    required String body,
  }) = _StepItemPrimitive;

  factory StepItemPrimitive.empty() => StepItemPrimitive(
        id: UniqueId(),
        body: '',
      );

  factory StepItemPrimitive.fromDomain(StepItem stepItem) {
    return StepItemPrimitive(
      id: stepItem.id,
      body: stepItem.body.getOrCrash(),
    );
  }

  StepItem toDomain() {
    return StepItem(
      id: id,
      body: StepBody(body),
    );
  }
}
