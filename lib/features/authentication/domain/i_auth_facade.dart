import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'auth_failure.dart';
import 'models/user_auth.dart';
import 'models/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<UserAuth>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> signInWithApple();
  Future<void> signOut();
}
