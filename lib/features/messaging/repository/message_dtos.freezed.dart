// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) {
  return _MessageDTO.fromJson(json);
}

class _$MessageDTOTearOff {
  const _$MessageDTOTearOff();

  _MessageDTO call(
      {@JsonKey(ignore: true) UniqueId messageID,
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
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _MessageDTO(
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
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $MessageDTO = _$MessageDTOTearOff();

mixin _$MessageDTO {
  @JsonKey(ignore: true)
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
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $MessageDTOCopyWith<MessageDTO> get copyWith;
}

abstract class $MessageDTOCopyWith<$Res> {
  factory $MessageDTOCopyWith(
          MessageDTO value, $Res Function(MessageDTO) then) =
      _$MessageDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) UniqueId messageID,
      UniqueId authorID,
      String messageEmoji,
      String messageBody,
      bool pending,
      List<String> messageMedia,
      String mediaStatus,
      double mediaAspectRatio,
      DateTime timeStamp,
      String messageType,
      Map<UniqueId, Reaction> reactions,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$MessageDTOCopyWithImpl<$Res> implements $MessageDTOCopyWith<$Res> {
  _$MessageDTOCopyWithImpl(this._value, this._then);

  final MessageDTO _value;
  // ignore: unused_field
  final $Res Function(MessageDTO) _then;

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
    Object serverTimeStamp = freezed,
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
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$MessageDTOCopyWith<$Res> implements $MessageDTOCopyWith<$Res> {
  factory _$MessageDTOCopyWith(
          _MessageDTO value, $Res Function(_MessageDTO) then) =
      __$MessageDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) UniqueId messageID,
      UniqueId authorID,
      String messageEmoji,
      String messageBody,
      bool pending,
      List<String> messageMedia,
      String mediaStatus,
      double mediaAspectRatio,
      DateTime timeStamp,
      String messageType,
      Map<UniqueId, Reaction> reactions,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$MessageDTOCopyWithImpl<$Res> extends _$MessageDTOCopyWithImpl<$Res>
    implements _$MessageDTOCopyWith<$Res> {
  __$MessageDTOCopyWithImpl(
      _MessageDTO _value, $Res Function(_MessageDTO) _then)
      : super(_value, (v) => _then(v as _MessageDTO));

  @override
  _MessageDTO get _value => super._value as _MessageDTO;

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
    Object serverTimeStamp = freezed,
  }) {
    return _then(_MessageDTO(
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
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_MessageDTO implements _MessageDTO {
  _$_MessageDTO(
      {@JsonKey(ignore: true) this.messageID,
      @required this.authorID,
      @required this.messageEmoji,
      @required this.messageBody,
      @required this.pending,
      @required this.messageMedia,
      @required this.mediaStatus,
      @required this.mediaAspectRatio,
      @required this.timeStamp,
      @required this.messageType,
      @required this.reactions,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(authorID != null),
        assert(messageEmoji != null),
        assert(messageBody != null),
        assert(pending != null),
        assert(messageMedia != null),
        assert(mediaStatus != null),
        assert(mediaAspectRatio != null),
        assert(timeStamp != null),
        assert(messageType != null),
        assert(reactions != null),
        assert(serverTimeStamp != null);

  factory _$_MessageDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
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
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'MessageDTO(messageID: $messageID, authorID: $authorID, messageEmoji: $messageEmoji, messageBody: $messageBody, pending: $pending, messageMedia: $messageMedia, mediaStatus: $mediaStatus, mediaAspectRatio: $mediaAspectRatio, timeStamp: $timeStamp, messageType: $messageType, reactions: $reactions, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageDTO &&
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
                    .equals(other.reactions, reactions)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
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
      const DeepCollectionEquality().hash(reactions) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$MessageDTOCopyWith<_MessageDTO> get copyWith =>
      __$MessageDTOCopyWithImpl<_MessageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDTOToJson(this);
  }
}

abstract class _MessageDTO implements MessageDTO {
  factory _MessageDTO(
          {@JsonKey(ignore: true) UniqueId messageID,
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
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_MessageDTO;

  factory _MessageDTO.fromJson(Map<String, dynamic> json) =
      _$_MessageDTO.fromJson;

  @override
  @JsonKey(ignore: true)
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
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$MessageDTOCopyWith<_MessageDTO> get copyWith;
}
