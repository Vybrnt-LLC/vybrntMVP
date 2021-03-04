import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';

part 'activity_dtos.freezed.dart';
part 'activity_dtos.g.dart';

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

@freezed
abstract class ActivityDTO with _$ActivityDTO {
  factory ActivityDTO({
    @JsonKey(ignore: true) String activityID,
    @required String activityType,
    @required String objectID,
    @required String ownerType,
    @required String ownerID,
    @required String titleSubject,
    @required String bodySubject,
    @required @TimestampConverter() DateTime timeStamp,
    @required String imageURL,
    @required String profileID,
    @required String profileType,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ActivityDTO;

  factory ActivityDTO.fromFirestore(DocumentSnapshot doc) {
    return ActivityDTO.fromJson(doc.data()).copyWith(activityID: doc.id);
  }

  factory ActivityDTO.fromDomain(Activity activity) {
    return ActivityDTO(
      activityID: activity.activityID.getOrCrash(),
      activityType: ActivityTypeHelper.stringOf(activity.activityType),
      objectID: activity.objectID,
      ownerID: activity.ownerID,
      imageURL: activity.imageURL,
      ownerType: OwnerTypeHelper.stringOf(activity.ownerType),
      titleSubject: activity.titleSubject,
      bodySubject: activity.bodySubject,
      profileID: activity.profileID,
      profileType: OwnerTypeHelper.stringOf(activity.profileType),
      timeStamp: activity.timeStamp,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory ActivityDTO.fromJson(Map<String, dynamic> json) =>
      _$ActivityDTOFromJson(json);
}

extension ActivityDTOX on ActivityDTO {
  Activity toDomain() {
    return Activity(
      activityID: UniqueId.fromUniqueString(activityID),
      activityType: ActivityTypeHelper.valueOf(activityType),
      objectID: objectID,
      ownerID: ownerID,
      imageURL: imageURL,
      ownerType: OwnerTypeHelper.valueOf(ownerType),
      titleSubject: titleSubject,
      bodySubject: bodySubject,
      profileID: profileID,
      profileType: OwnerTypeHelper.valueOf(profileType),
      timeStamp: timeStamp,
    );
  }
}
