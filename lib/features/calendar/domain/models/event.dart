import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:vybrnt_mvp/core/auth/failures.dart';

import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'event.freezed.dart';

@freezed
abstract class Event with _$Event {
  const factory Event(
      {@required UniqueId eventID,
      @required String senderID,
      @required String eventName,
      @required DateTime startTime,
      @required DateTime endTime,
      @required DateTime timeStamp,
      @required String eventCaption,
      @required String eventLocation,
      @required bool isOrg,
      String eventUrl,
      String orgID,
      String eventImageUrl}) = _Event;

  factory Event.empty() => Event(
        eventID: UniqueId(),
        senderID: '',
        endTime: (DateTime.now()).add(new Duration(hours: 1)),
        eventCaption: '',
        eventName: '',
        startTime: DateTime.now(),
        timeStamp: DateTime.now(),
        eventLocation: '',
        eventImageUrl: '',
        orgID: '',
        eventUrl: '',
        isOrg: false,
      );
}

extension EventX on Event {
  Option<ValueFailure<dynamic>> get failureOption {
    return eventID.failureOrUnit
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
