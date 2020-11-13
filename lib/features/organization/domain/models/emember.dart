import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';

part 'emember.freezed.dart';

@freezed
abstract class EMember with _$EMember {
  const factory EMember({
    @required UniqueId userID,
    @required String position,
  }) = _EMember;

  factory EMember.empty() => EMember(
        userID: UniqueId(),
        position: '',
      );
}
