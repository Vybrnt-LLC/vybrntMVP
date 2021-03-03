// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {@required UniqueId messageID,
      @required UniqueId authorID,
      @required String messageEmoji,
      @required String messageBody,
      @required bool pending,
      @required List<String> messageMedia,
      @required String mediaStatus,
      @required double mediaAspectRatio,
      @required DateTime timeStamp,
      @required String messageType,
      @required Map<UniqueId, Reaction> reactions}) {
    return _Message(
      messageID: messageID,
      authorID: authorID,
      messageEmoji: messageEmoji,
      messageBody: messageBody,
      pending: pending,
      messageMedia: messageMedia,
      mediaStatus: mediaStatus,
      mediaAspectRatio: mediaAspectRatio,
      timeStamp: timeStamp,
      messageType: messageType,
      reactions: reactions,
    );
  }
}

// ignore: unused_element
const $Message = _$MessageTearOff();

mixin _$Message {
  UniqueId get messageID;
  UniqueId get authorID;
  String get messageEmoji;
  String get messageBody;
  bool get pending;
  List<String> get messageMedia;
  String get mediaStatus;
  double get mediaAspectRatio;
  DateTime get timeStamp;
  String get messageType;
  Map<UniqueId, Reaction> get reactions;

  $MessageCopyWith<Message> get copyWith;
}

abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {UniqueId messageID,
      UniqueId authorID,
      String messageEmoji,
      String messageBody,
      bool pending,
      List<String> messageMedia,
      String mediaStatus,
      double mediaAspectRatio,
      DateTime timeStamp,
      String messageType,
      Map<UniqueId, Reaction> reactions});
}

class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object messageID = freezed,
    Object authorID = freezed,
    Object messageEmoji = freezed,
    Object messageBody = freezed,
    Object pending = freezed,
    Object messageMedia = freezed,
    Object mediaStatus = freezed,
    Object mediaAspectRatio = freezed,
    Object timeStamp = freezed,
    Object messageType = freezed,
    Object reactions = freezed,
  }) {
    return _then(_value.copyWith(
      messageID:
          messageID == freezed ? _value.messageID : messageID as UniqueId,
      authorID: authorID == freezed ? _value.authorID : authorID as UniqueId,
      messageEmoji: messageEmoji == freezed
          ? _value.messageEmoji
          : messageEmoji as String,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      pending: pending == freezed ? _value.pending : pending as bool,
      messageMedia: messageMedia == freezed
          ? _value.messageMedia
          : messageMedia as List<String>,
      mediaStatus:
          mediaStatus == freezed ? _value.mediaStatus : mediaStatus as String,
      mediaAspectRatio: mediaAspectRatio == freezed
          ? _value.mediaAspectRatio
          : mediaAspectRatio as double,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      messageType:
          messageType == freezed ? _value.messageType : messageType as String,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions as Map<UniqueId, Reaction>,
    ));
  }
}

abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId messageID,
      UniqueId authorID,
      String messageEmoji,
      String messageBody,
      bool pending,
      List<String> messageMedia,
      String mediaStatus,
      double mediaAspectRatio,
      DateTime timeStamp,
      String messageType,
      Map<UniqueId, Reaction> reactions});
}

class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object messageID = freezed,
    Object authorID = freezed,
    Object messageEmoji = freezed,
    Object messageBody = freezed,
    Object pending = freezed,
    Object messageMedia = freezed,
    Object mediaStatus = freezed,
    Object mediaAspectRatio = freezed,
    Object timeStamp = freezed,
    Object messageType = freezed,
    Object reactions = freezed,
  }) {
    return _then(_Message(
      messageID:
          messageID == freezed ? _value.messageID : messageID as UniqueId,
      authorID: authorID == freezed ? _value.authorID : authorID as UniqueId,
      messageEmoji: messageEmoji == freezed
          ? _value.messageEmoji
          : messageEmoji as String,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      pending: pending == freezed ? _value.pending : pending as bool,
      messageMedia: messageMedia == freezed
          ? _value.messageMedia
          : messageMedia as List<String>,
      mediaStatus:
          mediaStatus == freezed ? _value.mediaStatus : mediaStatus as String,
      mediaAspectRatio: mediaAspectRatio == freezed
          ? _value.mediaAspectRatio
          : mediaAspectRatio as double,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
      messageType:
          messageType == freezed ? _value.messageType : messageType as String,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions as Map<UniqueId, Reaction>,
    ));
  }
}

class _$_Message with DiagnosticableTreeMixin implements _Message {
  const _$_Message(
      {@required this.messageID,
      @required this.authorID,
      @required this.messageEmoji,
      @required this.messageBody,
      @required this.pending,
      @required this.messageMedia,
      @required this.mediaStatus,
      @required this.mediaAspectRatio,
      @required this.timeStamp,
      @required this.messageType,
      @required this.reactions})
      : assert(messageID != null),
        assert(authorID != null),
        assert(messageEmoji != null),
        assert(messageBody != null),
        assert(pending != null),
        assert(messageMedia != null),
        assert(mediaStatus != null),
        assert(mediaAspectRatio != null),
        assert(timeStamp != null),
        assert(messageType != null),
        assert(reactions != null);

  @override
  final UniqueId messageID;
  @override
  final UniqueId authorID;
  @override
  final String messageEmoji;
  @override
  final String messageBody;
  @override
  final bool pending;
  @override
  final List<String> messageMedia;
  @override
  final String mediaStatus;
  @override
  final double mediaAspectRatio;
  @override
  final DateTime timeStamp;
  @override
  final String messageType;
  @override
  final Map<UniqueId, Reaction> reactions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Message(messageID: $messageID, authorID: $authorID, messageEmoji: $messageEmoji, messageBody: $messageBody, pending: $pending, messageMedia: $messageMedia, mediaStatus: $mediaStatus, mediaAspectRatio: $mediaAspectRatio, timeStamp: $timeStamp, messageType: $messageType, reactions: $reactions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Message'))
      ..add(DiagnosticsProperty('messageID', messageID))
      ..add(DiagnosticsProperty('authorID', authorID))
      ..add(DiagnosticsProperty('messageEmoji', messageEmoji))
      ..add(DiagnosticsProperty('messageBody', messageBody))
      ..add(DiagnosticsProperty('pending', pending))
      ..add(DiagnosticsProperty('messageMedia', messageMedia))
      ..add(DiagnosticsProperty('mediaStatus', mediaStatus))
      ..add(DiagnosticsProperty('mediaAspectRatio', mediaAspectRatio))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('messageType', messageType))
      ..add(DiagnosticsProperty('reactions', reactions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.messageID, messageID) ||
                const DeepCollectionEquality()
                    .equals(other.messageID, messageID)) &&
            (identical(other.authorID, authorID) ||
                const DeepCollectionEquality()
                    .equals(other.authorID, authorID)) &&
            (identical(other.messageEmoji, messageEmoji) ||
                const DeepCollectionEquality()
                    .equals(other.messageEmoji, messageEmoji)) &&
            (identical(other.messageBody, messageBody) ||
                const DeepCollectionEquality()
                    .equals(other.messageBody, messageBody)) &&
            (identical(other.pending, pending) ||
                const DeepCollectionEquality()
                    .equals(other.pending, pending)) &&
            (identical(other.messageMedia, messageMedia) ||
                const DeepCollectionEquality()
                    .equals(other.messageMedia, messageMedia)) &&
            (identical(other.mediaStatus, mediaStatus) ||
                const DeepCollectionEquality()
                    .equals(other.mediaStatus, mediaStatus)) &&
            (identical(other.mediaAspectRatio, mediaAspectRatio) ||
                const DeepCollectionEquality()
                    .equals(other.mediaAspectRatio, mediaAspectRatio)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.messageType, messageType) ||
                const DeepCollectionEquality()
                    .equals(other.messageType, messageType)) &&
            (identical(other.reactions, reactions) ||
                const DeepCollectionEquality()
                    .equals(other.reactions, reactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageID) ^
      const DeepCollectionEquality().hash(authorID) ^
      const DeepCollectionEquality().hash(messageEmoji) ^
      const DeepCollectionEquality().hash(messageBody) ^
      const DeepCollectionEquality().hash(pending) ^
      const DeepCollectionEquality().hash(messageMedia) ^
      const DeepCollectionEquality().hash(mediaStatus) ^
      const DeepCollectionEquality().hash(mediaAspectRatio) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(messageType) ^
      const DeepCollectionEquality().hash(reactions);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {@required UniqueId messageID,
      @required UniqueId authorID,
      @required String messageEmoji,
      @required String messageBody,
      @required bool pending,
      @required List<String> messageMedia,
      @required String mediaStatus,
      @required double mediaAspectRatio,
      @required DateTime timeStamp,
      @required String messageType,
      @required Map<UniqueId, Reaction> reactions}) = _$_Message;

  @override
  UniqueId get messageID;
  @override
  UniqueId get authorID;
  @override
  String get messageEmoji;
  @override
  String get messageBody;
  @override
  bool get pending;
  @override
  List<String> get messageMedia;
  @override
  String get mediaStatus;
  @override
  double get mediaAspectRatio;
  @override
  DateTime get timeStamp;
  @override
  String get messageType;
  @override
  Map<UniqueId, Reaction> get reactions;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
