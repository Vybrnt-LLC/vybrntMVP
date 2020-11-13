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

@freezed
abstract class ActivityDTO with _$ActivityDTO {
  factory ActivityDTO({
    @JsonKey(ignore: true) String activityID,
    @required String type,
    @required String userID,
    @required String orgID,
    @required String profileImageURL,
    @required String postID,
    @required String eventID,
    @required String commentID,
    @required String username,
    @required dynamic timeStamp,
    @required bool isOrg,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ActivityDTO;

  factory ActivityDTO.fromFirestore(DocumentSnapshot doc) {
    return ActivityDTO.fromJson(doc.data()).copyWith(activityID: doc.id);
  }

  factory ActivityDTO.fromDomain(Activity activity) {
    return ActivityDTO(
      activityID: activity.activityID.getOrCrash(),
      type: activity.type,
      userID: activity.userID,
      orgID: activity.orgID,
      profileImageURL: activity.profileImageURL,
      postID: activity.postID,
      eventID: activity.eventID,
      username: activity.username,
      commentID: activity.commentID,
      timeStamp: activity.timeStamp,
      isOrg: activity.isOrg,
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
      type: type,
      userID: userID,
      orgID: orgID,
      commentID: commentID,
      profileImageURL: profileImageURL,
      postID: postID,
      eventID: eventID,
      username: username,
      timeStamp: timeStamp.toDate(),
      isOrg: isOrg,
    );
  }
}
