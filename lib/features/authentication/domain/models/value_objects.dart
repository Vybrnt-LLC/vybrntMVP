import 'package:dartz/dartz.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/auth/value_validators.dart';

class EmailAddress extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input)
    );
  }

  const EmailAddress._(this.value);

}

class Password extends ValueObject<String>{
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input)
    );
  }

  const Password._(this.value);

}