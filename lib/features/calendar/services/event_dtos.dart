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
    @required @TimestampConverter() DateTime startTime,
    @required @TimestampConverter() DateTime endTime,
    @required @TimestampConverter() DateTime timeStamp,
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
      startTime: event.startTime,
      endTime: event.endTime,
      eventName: event.eventName,
      isOrg: event.isOrg,
      orgID: event.orgID,
      eventImageUrl: event.eventImageUrl,
      eventUrl: event.eventUrl,
      timeStamp: event.timeStamp,
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

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp date) {
    return date.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

extension EventDtoX on EventDto {
  Event toDomain() {
    return Event(
        eventID: UniqueId.fromUniqueString(eventID),
        senderID: senderID,
        endTime: endTime,
        eventImageUrl: eventImageUrl,
        eventLocation: eventLocation,
        eventCaption: eventCaption,
        eventName: eventName,
        eventUrl: eventUrl,
        orgID: orgID,
        startTime: startTime,
        timeStamp: timeStamp,
        isOrg: isOrg);
  }
}
