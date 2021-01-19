import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'channel_user.freezed.dart';

@freezed
abstract class ChannelUser with _$ChannelUser {
  const factory ChannelUser({
    @required UniqueId channelUserID,
    @required bool RSVP,
  }) = _ChannelUser;

  factory ChannelUser.empty() => ChannelUser(
      channelUserID: UniqueId(),
      RSVP: false);
}
