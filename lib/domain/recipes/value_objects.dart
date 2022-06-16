import 'package:cookbook_app/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

import 'package:cookbook_app/domain/core/failure.dart';
import 'package:cookbook_app/domain/core/value_objects.dart';
import 'package:kt_dart/kt.dart';

class RecipeName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory RecipeName(String input) {
    return RecipeName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const RecipeName._(this.value);
}

class IngredientName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 60;

  factory IngredientName(String input) {
    return IngredientName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const IngredientName._(this.value);
}

class StepBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory StepBody(String input) {
    return StepBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const StepBody._(this.value);
}

class ListItem<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const minLength = 2;
  static const maxLength = 20;

  factory ListItem(KtList<T> input) {
    return ListItem._(
      validateListMaxAndMinLength(input, minLength, maxLength),
    );
  }

  const ListItem._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isMinimum {
    return length >= minLength;
  }

  bool get isFull {
    return length == maxLength;
  }
}
