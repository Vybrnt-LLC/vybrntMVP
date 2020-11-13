import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'org_list_model.freezed.dart';

@freezed
abstract class OrgList with _$OrgList {
  const factory OrgList({
    @required UniqueId orgID,
    @required String name,
    @required String abbv,
    @required String profileImageUrl,
    @required String primaryColor,
    @required String secondaryColor,
  }) = _OrgList;

  factory OrgList.empty() => OrgList(
        orgID: UniqueId(),
        name: '',
        abbv: '',
        profileImageUrl: '',
        primaryColor: 'ff2196f3',
        secondaryColor: 'ff001000',
      );
}

extension OrgListX on OrgList {
  Option<ValueFailure<dynamic>> get failureOption {
    return orgID.failureOrUnit
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
