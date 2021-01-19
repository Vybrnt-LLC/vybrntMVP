import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/failures.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/features/messaging/domain/channel_user.dart';

part 'reaction.freezed.dart';

@freezed
abstract class Reaction with _$Reaction {
  const factory Reaction({
    @required UniqueId userID,
    @required String userName,
    @required String emoji,
    @required DateTime timeStamp,
  }) = _Reaction;

  factory Reaction.empty() => Reaction(
      userID: UniqueId(),
      userName: '',
      emoji: '',
      timeStamp: DateTime.now(),);
}
