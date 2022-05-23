import 'package:cookbook_app/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListMaxAndMinLength<T>(
  KtList<T> input,
  int minLength,
  int maxLength,
) {
  if (input.size <= maxLength) {
    if (input.size >= minLength) {
      return right(input);
    } else {
      return left(
          ValueFailure.listTooShort(failedValue: input, min: minLength));
    }
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
