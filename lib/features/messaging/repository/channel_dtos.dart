import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/messaging/domain/channel.dart';
import 'package:vybrnt_mvp/features/messaging/domain/channel_user.dart';

part 'channel_dtos.freezed.dart';
part 'channel_dtos.g.dart';

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
abstract class ChannelDTO with _$ChannelDTO {
  factory ChannelDTO({
    @JsonKey(ignore: true) UniqueId channelID,
    @required UniqueId authorID,
    @required String channelName,
    @required String channelDescription,
    @required String channelVisibility,
    @required bool hasUpdates,
    @required String channelType,
    @required bool hasStartTime,
    @required String venue,
    @required DateTime startDate,
    @required List<ChannelUser> users,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ChannelDTO;

  factory ChannelDTO.fromFirestore(DocumentSnapshot doc) {
    return ChannelDTO.fromJson(doc.data()).copyWith(channelID: UniqueId.fromUniqueString(doc.id));
  }

  factory ChannelDTO.fromDomain(Channel channel) {
    return ChannelDTO(
      channelID: channel.channelID,
      authorID: channel.authorID,
      channelName: channel.channelName,
      channelDescription: channel.channelDescription,
      channelVisibility: channel.channelVisibility,
      hasUpdates: channel.hasUpdates,
      channelType: channel.channelType,
      hasStartTime: channel.hasStartTime,
      venue: channel.venue,
      startDate: channel.startDate,
      users: channel.users,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory ChannelDTO.fromJson(Map<String, dynamic> json) =>
      _$ChannelDTOFromJson(json);
}

extension ChannelDTOX on ChannelDTO {
  Channel toDomain() {
    return Channel(
      channelID: channelID,
      authorID: authorID,
      channelName: channelName,
      channelDescription: channelDescription,
      channelVisibility: channelVisibility,
      hasUpdates: hasUpdates,
      channelType: channelType,
      hasStartTime: hasStartTime,
      venue: venue,
      startDate: startDate,
      users: users,
    );
  }
}
