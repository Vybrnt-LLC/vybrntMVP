import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'org_calendar.freezed.dart';

@freezed
abstract class OrgCalendar with _$OrgCalendar{
  const factory OrgCalendar({
    @required UniqueId orgID,
    @required String abbv,
    @required String name,
    @required String profileImageUrl,
    @required bool isToggled,
  }) = _OrgCalendar;

  factory OrgCalendar.empty() => OrgCalendar(
        orgID: UniqueId(),
        abbv: '',
        name: '',
        profileImageUrl: '',
        isToggled: true,
      );
}

extension OrgCalendarX on OrgCalendar {
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