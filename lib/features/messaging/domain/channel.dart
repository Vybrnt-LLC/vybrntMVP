import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/messaging/domain/channel_user.dart';

part 'channel.freezed.dart';

@freezed
abstract class Channel with _$Channel {
  const factory Channel({
    @required UniqueId channelID,
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
  }) = _Channel;

  factory Channel.empty() => Channel(
      channelID: UniqueId(),
      authorID: UniqueId(),
      channelName: '',
      channelDescription: '',
      channelVisibility: '',
      hasUpdates: false,
      channelType: '',
      hasStartTime: false,
      venue: '',
      startDate: DateTime.now(),
      users: List<ChannelUser>(),
      );
}
