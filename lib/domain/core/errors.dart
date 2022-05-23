import 'package:cookbook_app/domain/core/failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFialure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Filure was: $valueFailure');
  }
}
