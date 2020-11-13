import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'user_list_model.freezed.dart';

@freezed
abstract class UserList with _$UserList {
  const factory UserList({
    @required UniqueId userID,
    @required String profileName,
    @required String profileImageUrl,
    @required String primaryColor,
    @required String secondaryColor,
  }) = _UserList;

  factory UserList.empty() => UserList(
        userID: UniqueId(),
        profileName: '',
        profileImageUrl: '',
        primaryColor: 'ff2196f3',
        secondaryColor: 'ff001000',
      );
}

extension UserListX on UserList {
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
