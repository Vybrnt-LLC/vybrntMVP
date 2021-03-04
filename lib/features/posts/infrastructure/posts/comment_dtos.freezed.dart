// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'comment_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

class _$CommentDTOTearOff {
  const _$CommentDTOTearOff();

  _CommentDTO call(
      {@JsonKey(ignore: true) String commentID,
      @required String commentBody,
      @required String senderID,
      @required @TimestampConverter() Timestamp commentDate}) {
    return _CommentDTO(
      commentID: commentID,
      commentBody: commentBody,
      senderID: senderID,
      commentDate: commentDate,
    );
  }
}

// ignore: unused_element
const $CommentDTO = _$CommentDTOTearOff();

mixin _$CommentDTO {
  @JsonKey(ignore: true)
  String get commentID;
  String get commentBody;
  String get senderID;
  @TimestampConverter()
  Timestamp get commentDate;

  Map<String, dynamic> toJson();
  $CommentDTOCopyWith<CommentDTO> get copyWith;
}

abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String commentID,
      String commentBody,
      String senderID,
      @TimestampConverter() Timestamp commentDate});
}

class _$CommentDTOCopyWithImpl<$Res> implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

  final CommentDTO _value;
  // ignore: unused_field
  final $Res Function(CommentDTO) _then;

  @override
  $Res call({
    Object commentID = freezed,
    Object commentBody = freezed,
    Object senderID = freezed,
    Object commentDate = freezed,
  }) {
    return _then(_value.copyWith(
      commentID: commentID == freezed ? _value.commentID : commentID as String,
      commentBody:
          commentBody == freezed ? _value.commentBody : commentBody as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      commentDate: commentDate == freezed
          ? _value.commentDate
          : commentDate as Timestamp,
    ));
  }
}

abstract class _$CommentDTOCopyWith<$Res> implements $CommentDTOCopyWith<$Res> {
  factory _$CommentDTOCopyWith(
          _CommentDTO value, $Res Function(_CommentDTO) then) =
      __$CommentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String commentID,
      String commentBody,
      String senderID,
      @TimestampConverter() Timestamp commentDate});
}

class __$CommentDTOCopyWithImpl<$Res> extends _$CommentDTOCopyWithImpl<$Res>
    implements _$CommentDTOCopyWith<$Res> {
  __$CommentDTOCopyWithImpl(
      _CommentDTO _value, $Res Function(_CommentDTO) _then)
      : super(_value, (v) => _then(v as _CommentDTO));

  @override
  _CommentDTO get _value => super._value as _CommentDTO;

  @override
  $Res call({
    Object commentID = freezed,
    Object commentBody = freezed,
    Object senderID = freezed,
    Object commentDate = freezed,
  }) {
    return _then(_CommentDTO(
      commentID: commentID == freezed ? _value.commentID : commentID as String,
      commentBody:
          commentBody == freezed ? _value.commentBody : commentBody as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      commentDate: commentDate == freezed
          ? _value.commentDate
          : commentDate as Timestamp,
    ));
  }
}

@JsonSerializable()
class _$_CommentDTO implements _CommentDTO {
  const _$_CommentDTO(
      {@JsonKey(ignore: true) this.commentID,
      @required this.commentBody,
      @required this.senderID,
      @required @TimestampConverter() this.commentDate})
      : assert(commentBody != null),
        assert(senderID != null),
        assert(commentDate != null);

  factory _$_CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String commentID;
  @override
  final String commentBody;
  @override
  final String senderID;
  @override
  @TimestampConverter()
  final Timestamp commentDate;

  @override
  String toString() {
    return 'CommentDTO(commentID: $commentID, commentBody: $commentBody, senderID: $senderID, commentDate: $commentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDTO &&
            (identical(other.commentID, commentID) ||
                const DeepCollectionEquality()
                    .equals(other.commentID, commentID)) &&
            (identical(other.commentBody, commentBody) ||
                const DeepCollectionEquality()
                    .equals(other.commentBody, commentBody)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.commentDate, commentDate) ||
                const DeepCollectionEquality()
                    .equals(other.commentDate, commentDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentID) ^
      const DeepCollectionEquality().hash(commentBody) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(commentDate);

  @override
  _$CommentDTOCopyWith<_CommentDTO> get copyWith =>
      __$CommentDTOCopyWithImpl<_CommentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDTOToJson(this);
  }
}

abstract class _CommentDTO implements CommentDTO {
  const factory _CommentDTO(
      {@JsonKey(ignore: true) String commentID,
      @required String commentBody,
      @required String senderID,
      @required @TimestampConverter() Timestamp commentDate}) = _$_CommentDTO;

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$_CommentDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get commentID;
  @override
  String get commentBody;
  @override
  String get senderID;
  @override
  @TimestampConverter()
  Timestamp get commentDate;
  @override
  _$CommentDTOCopyWith<_CommentDTO> get copyWith;
}
