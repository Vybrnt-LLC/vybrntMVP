import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'reaction.dart';
import 'package:vybrnt_mvp/features/messaging/domain/channel_user.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    @required UniqueId messageID,
    @required UniqueId authorID,
    @required String messageEmoji,
    @required String messageBody,
    @required bool pending,
    @required List<String> messageMedia,
    @required String mediaStatus,
    @required double mediaAspectRatio,
    @required DateTime timeStamp,
    @required String messageType,
    @required Map<UniqueId, Reaction> reactions
  }) = _Message;

  factory Message.empty() => Message(
      messageID: UniqueId(),
      authorID: UniqueId(),
      messageEmoji: '',
      messageBody: '',
      pending: false,
      messageMedia: List<String>(),
      mediaStatus: '',
      mediaAspectRatio: 0,
      timeStamp: DateTime.now(),
      messageType: '',
      // Add reactions
      reactions: Map(),
      );   
}
