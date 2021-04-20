import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId userID,
    @required Username userName,
    @required String profileName,
    @required String bannerImageUrl,
    @required String profileImageUrl,
    @required String bio,
    @required String major,
    @required String email,
    @required String primaryColor,
    @required String secondaryColor,
  }) = _User;

  factory User.empty() => User(
        userID: UniqueId(),
        userName: Username('Username'),
        profileName: '',
        bannerImageUrl: '',
        profileImageUrl: '',
        bio: '',
        email: '',
        major: '',
        primaryColor: 'ff2196f3',
        secondaryColor: 'ff001000',
      );
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return userID.failureOrUnit
        // .andThen(senderID.failureOrUnit)
        // .andThen(todos.failureOrUnit)
        // .andThen(
        //   todos
        //       .getOrCrash()
        //       .map((todoItem) => todoItem.failureOption)
        //       .filter((o) => o.isSome())
        //       .getOrElse(0, (_) => none())
        //       .fold(() => right(unit), (f) => left(f)),
        // )
        .fold((f) => some(f), (_) => none());
  }
}
