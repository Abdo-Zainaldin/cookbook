import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failure.dart';

part 'ingredient_item.freezed.dart';

@freezed
abstract class IngredientItem with _$IngredientItem {
  const IngredientItem._();

  const factory IngredientItem({
    required UniqueId id,
    required IngredientName name,
  }) = _IngredientItem;

  factory IngredientItem.empty() => IngredientItem(
        id: UniqueId(),
        name: IngredientName(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
