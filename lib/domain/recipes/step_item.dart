import 'package:cookbook_app/domain/recipes/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failure.dart';
import '../core/value_objects.dart';

part 'step_item.freezed.dart';

@freezed
abstract class StepItem with _$StepItem {
  const StepItem._();

  const factory StepItem({
    required UniqueId id,
    required StepBody body,
  }) = _StepItem;

  factory StepItem.empty() => StepItem(
        id: UniqueId(),
        body: StepBody(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.value.fold((f) => some(f), (_) => none());
  }
}
