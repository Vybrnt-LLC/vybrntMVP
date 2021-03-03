import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/messaging/domain/reaction.dart';
import 'package:vybrnt_mvp/features/messaging/domain/message.dart';

part 'message_dtos.freezed.dart';
part 'message_dtos.g.dart';

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
abstract class MessageDTO with _$MessageDTO {
  factory MessageDTO({
    @JsonKey(ignore: true) UniqueId messageID,
    @required UniqueId authorID,
    @required String messageEmoji,
    @required String messageBody,
    @required bool pending,
    @required List<String> messageMedia,
    @required String mediaStatus,
    @required double mediaAspectRatio,
    @required DateTime timeStamp,
    @required String messageType,
    @required Map<UniqueId, Reaction> reactions,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _MessageDTO;

  factory MessageDTO.fromFirestore(DocumentSnapshot doc) {
    return MessageDTO.fromJson(doc.data()).copyWith(messageID: UniqueId.fromUniqueString(doc.id));
  }

  factory MessageDTO.fromDomain(Message message) {
    return MessageDTO(
      messageID: message.messageID,
      authorID: message.authorID,
      messageEmoji: message.messageEmoji,
      messageBody: message.messageBody,
      pending: message.pending,
      messageMedia: message.messageMedia,
      mediaStatus: message.mediaStatus,
      mediaAspectRatio: message.mediaAspectRatio,
      timeStamp: message.timeStamp,
      messageType: message.messageType,
      reactions: message.reactions,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory MessageDTO.fromJson(Map<String, dynamic> json) =>
      _$MessageDTOFromJson(json);
}

extension MessageDTOX on MessageDTO {
  Message toDomain() {
    return Message(
      messageID: messageID,
      authorID: authorID,
      messageEmoji: messageEmoji,
      messageBody: messageBody,
      pending: pending,
      messageMedia: messageMedia,
      mediaStatus: mediaStatus,
      mediaAspectRatio: mediaAspectRatio,
      messageType: messageType,
      reactions: reactions,
      timeStamp: timeStamp,
    );
  }
}
