import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';

part 'event_dtos.freezed.dart';
part 'event_dtos.g.dart';

@freezed
abstract class EventDto with _$EventDto {
  factory EventDto({
    @JsonKey(ignore: true) String eventID,
    @required String senderID,
    @required String eventName,
    @required @TimestampConverter() Timestamp startTime,
    @required @TimestampConverter() Timestamp endTime,
    @required @TimestampConverter() Timestamp timeStamp,
    @required String eventCaption,
    @required String eventUrl,
    @required String eventLocation,
    @required bool isOrg,
    String orgID,
    String eventImageUrl,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _EventDto;

  factory EventDto.fromDomain(Event event) {
    return EventDto(
      eventID: event.eventID.getOrCrash(),
      senderID: event.senderID,
      eventCaption: event.eventCaption,
      startTime: Timestamp.fromDate(event.startTime),
      endTime: Timestamp.fromDate(event.endTime),
      eventName: event.eventName,
      isOrg: event.isOrg,
      orgID: event.orgID,
      eventImageUrl: event.eventImageUrl,
      eventUrl: event.eventUrl,
      timeStamp: Timestamp.fromDate(event.timeStamp),
      eventLocation: event.eventLocation,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  factory EventDto.fromFirestore(DocumentSnapshot doc) {
    return EventDto.fromJson(doc.data()).copyWith(
      eventID: doc.id,
    );
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

class TimestampConverter implements JsonConverter<Timestamp, int> {
  const TimestampConverter();

  @override
  Timestamp fromJson(int value) {
    return Timestamp.fromMicrosecondsSinceEpoch(value);
  }

  @override
  int toJson(Timestamp value) => value.microsecondsSinceEpoch;
}

extension EventDtoX on EventDto {
  Event toDomain() {
    return Event(
        eventID: UniqueId.fromUniqueString(eventID),
        senderID: senderID,
        endTime: endTime.toDate(),
        eventImageUrl: eventImageUrl,
        eventLocation: eventLocation,
        eventCaption: eventCaption,
        eventName: eventName,
        eventUrl: eventUrl,
        orgID: orgID,
        startTime: startTime.toDate(),
        timeStamp: timeStamp.toDate(),
        isOrg: isOrg);
  }
}
