import 'package:cookbook_app/domain/auth/auth_failure.dart';
import 'package:cookbook_app/domain/auth/user.dart';
import 'package:cookbook_app/domain/auth/value_objectes.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPssword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
