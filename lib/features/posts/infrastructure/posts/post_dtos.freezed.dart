// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostDTO _$PostDTOFromJson(Map<String, dynamic> json) {
  return _PostDTO.fromJson(json);
}

class _$PostDTOTearOff {
  const _$PostDTOTearOff();

  _PostDTO call(
      {@JsonKey(ignore: true) String postID,
      @required String senderID,
      @required String orgID,
      @required String eventID,
      @required String repostID,
      @required String postType,
      @required String postHeader,
      @required String postBody,
      @required String postImageURL,
      @required String postURL,
      @required int likeCount,
      @required bool commentable,
      @required int commentCount,
      @required bool repostable,
      @required int repostCount,
      @required @TimestampConverter() DateTime postTime,
      @required @ServerTimestampConverter() FieldValue serverTimestamp}) {
    return _PostDTO(
      postID: postID,
      senderID: senderID,
      orgID: orgID,
      eventID: eventID,
      repostID: repostID,
      postType: postType,
      postHeader: postHeader,
      postBody: postBody,
      postImageURL: postImageURL,
      postURL: postURL,
      likeCount: likeCount,
      commentable: commentable,
      commentCount: commentCount,
      repostable: repostable,
      repostCount: repostCount,
      postTime: postTime,
      serverTimestamp: serverTimestamp,
    );
  }
}

// ignore: unused_element
const $PostDTO = _$PostDTOTearOff();

mixin _$PostDTO {
  @JsonKey(ignore: true)
  String get postID;
  String get senderID;
  String get orgID;
  String get eventID;
  String get repostID;
  String get postType;
  String get postHeader;
  String get postBody;
  String get postImageURL;
  String get postURL;
  int get likeCount;
  bool get commentable;
  int get commentCount;
  bool get repostable;
  int get repostCount;
  @TimestampConverter()
  DateTime get postTime;
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;

  Map<String, dynamic> toJson();
  $PostDTOCopyWith<PostDTO> get copyWith;
}

abstract class $PostDTOCopyWith<$Res> {
  factory $PostDTOCopyWith(PostDTO value, $Res Function(PostDTO) then) =
      _$PostDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String postID,
      String senderID,
      String orgID,
      String eventID,
      String repostID,
      String postType,
      String postHeader,
      String postBody,
      String postImageURL,
      String postURL,
      int likeCount,
      bool commentable,
      int commentCount,
      bool repostable,
      int repostCount,
      @TimestampConverter() DateTime postTime,
      @ServerTimestampConverter() FieldValue serverTimestamp});
}

class _$PostDTOCopyWithImpl<$Res> implements $PostDTOCopyWith<$Res> {
  _$PostDTOCopyWithImpl(this._value, this._then);

  final PostDTO _value;
  // ignore: unused_field
  final $Res Function(PostDTO) _then;

  @override
  $Res call({
    Object postID = freezed,
    Object senderID = freezed,
    Object orgID = freezed,
    Object eventID = freezed,
    Object repostID = freezed,
    Object postType = freezed,
    Object postHeader = freezed,
    Object postBody = freezed,
    Object postImageURL = freezed,
    Object postURL = freezed,
    Object likeCount = freezed,
    Object commentable = freezed,
    Object commentCount = freezed,
    Object repostable = freezed,
    Object repostCount = freezed,
    Object postTime = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      postID: postID == freezed ? _value.postID : postID as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      repostID: repostID == freezed ? _value.repostID : repostID as String,
      postType: postType == freezed ? _value.postType : postType as String,
      postHeader:
          postHeader == freezed ? _value.postHeader : postHeader as String,
      postBody: postBody == freezed ? _value.postBody : postBody as String,
      postImageURL: postImageURL == freezed
          ? _value.postImageURL
          : postImageURL as String,
      postURL: postURL == freezed ? _value.postURL : postURL as String,
      likeCount: likeCount == freezed ? _value.likeCount : likeCount as int,
      commentable:
          commentable == freezed ? _value.commentable : commentable as bool,
      commentCount:
          commentCount == freezed ? _value.commentCount : commentCount as int,
      repostable:
          repostable == freezed ? _value.repostable : repostable as bool,
      repostCount:
          repostCount == freezed ? _value.repostCount : repostCount as int,
      postTime: postTime == freezed ? _value.postTime : postTime as DateTime,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

abstract class _$PostDTOCopyWith<$Res> implements $PostDTOCopyWith<$Res> {
  factory _$PostDTOCopyWith(_PostDTO value, $Res Function(_PostDTO) then) =
      __$PostDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String postID,
      String senderID,
      String orgID,
      String eventID,
      String repostID,
      String postType,
      String postHeader,
      String postBody,
      String postImageURL,
      String postURL,
      int likeCount,
      bool commentable,
      int commentCount,
      bool repostable,
      int repostCount,
      @TimestampConverter() DateTime postTime,
      @ServerTimestampConverter() FieldValue serverTimestamp});
}

class __$PostDTOCopyWithImpl<$Res> extends _$PostDTOCopyWithImpl<$Res>
    implements _$PostDTOCopyWith<$Res> {
  __$PostDTOCopyWithImpl(_PostDTO _value, $Res Function(_PostDTO) _then)
      : super(_value, (v) => _then(v as _PostDTO));

  @override
  _PostDTO get _value => super._value as _PostDTO;

  @override
  $Res call({
    Object postID = freezed,
    Object senderID = freezed,
    Object orgID = freezed,
    Object eventID = freezed,
    Object repostID = freezed,
    Object postType = freezed,
    Object postHeader = freezed,
    Object postBody = freezed,
    Object postImageURL = freezed,
    Object postURL = freezed,
    Object likeCount = freezed,
    Object commentable = freezed,
    Object commentCount = freezed,
    Object repostable = freezed,
    Object repostCount = freezed,
    Object postTime = freezed,
    Object serverTimestamp = freezed,
  }) {
    return _then(_PostDTO(
      postID: postID == freezed ? _value.postID : postID as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
      eventID: eventID == freezed ? _value.eventID : eventID as String,
      repostID: repostID == freezed ? _value.repostID : repostID as String,
      postType: postType == freezed ? _value.postType : postType as String,
      postHeader:
          postHeader == freezed ? _value.postHeader : postHeader as String,
      postBody: postBody == freezed ? _value.postBody : postBody as String,
      postImageURL: postImageURL == freezed
          ? _value.postImageURL
          : postImageURL as String,
      postURL: postURL == freezed ? _value.postURL : postURL as String,
      likeCount: likeCount == freezed ? _value.likeCount : likeCount as int,
      commentable:
          commentable == freezed ? _value.commentable : commentable as bool,
      commentCount:
          commentCount == freezed ? _value.commentCount : commentCount as int,
      repostable:
          repostable == freezed ? _value.repostable : repostable as bool,
      repostCount:
          repostCount == freezed ? _value.repostCount : repostCount as int,
      postTime: postTime == freezed ? _value.postTime : postTime as DateTime,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_PostDTO implements _PostDTO {
  const _$_PostDTO(
      {@JsonKey(ignore: true) this.postID,
      @required this.senderID,
      @required this.orgID,
      @required this.eventID,
      @required this.repostID,
      @required this.postType,
      @required this.postHeader,
      @required this.postBody,
      @required this.postImageURL,
      @required this.postURL,
      @required this.likeCount,
      @required this.commentable,
      @required this.commentCount,
      @required this.repostable,
      @required this.repostCount,
      @required @TimestampConverter() this.postTime,
      @required @ServerTimestampConverter() this.serverTimestamp})
      : assert(senderID != null),
        assert(orgID != null),
        assert(eventID != null),
        assert(repostID != null),
        assert(postType != null),
        assert(postHeader != null),
        assert(postBody != null),
        assert(postImageURL != null),
        assert(postURL != null),
        assert(likeCount != null),
        assert(commentable != null),
        assert(commentCount != null),
        assert(repostable != null),
        assert(repostCount != null),
        assert(postTime != null),
        assert(serverTimestamp != null);

  factory _$_PostDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String postID;
  @override
  final String senderID;
  @override
  final String orgID;
  @override
  final String eventID;
  @override
  final String repostID;
  @override
  final String postType;
  @override
  final String postHeader;
  @override
  final String postBody;
  @override
  final String postImageURL;
  @override
  final String postURL;
  @override
  final int likeCount;
  @override
  final bool commentable;
  @override
  final int commentCount;
  @override
  final bool repostable;
  @override
  final int repostCount;
  @override
  @TimestampConverter()
  final DateTime postTime;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimestamp;

  @override
  String toString() {
    return 'PostDTO(postID: $postID, senderID: $senderID, orgID: $orgID, eventID: $eventID, repostID: $repostID, postType: $postType, postHeader: $postHeader, postBody: $postBody, postImageURL: $postImageURL, postURL: $postURL, likeCount: $likeCount, commentable: $commentable, commentCount: $commentCount, repostable: $repostable, repostCount: $repostCount, postTime: $postTime, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDTO &&
            (identical(other.postID, postID) ||
                const DeepCollectionEquality().equals(other.postID, postID)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.repostID, repostID) ||
                const DeepCollectionEquality()
                    .equals(other.repostID, repostID)) &&
            (identical(other.postType, postType) ||
                const DeepCollectionEquality()
                    .equals(other.postType, postType)) &&
            (identical(other.postHeader, postHeader) ||
                const DeepCollectionEquality()
                    .equals(other.postHeader, postHeader)) &&
            (identical(other.postBody, postBody) ||
                const DeepCollectionEquality()
                    .equals(other.postBody, postBody)) &&
            (identical(other.postImageURL, postImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.postImageURL, postImageURL)) &&
            (identical(other.postURL, postURL) ||
                const DeepCollectionEquality()
                    .equals(other.postURL, postURL)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.commentable, commentable) ||
                const DeepCollectionEquality()
                    .equals(other.commentable, commentable)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.repostable, repostable) ||
                const DeepCollectionEquality()
                    .equals(other.repostable, repostable)) &&
            (identical(other.repostCount, repostCount) ||
                const DeepCollectionEquality()
                    .equals(other.repostCount, repostCount)) &&
            (identical(other.postTime, postTime) ||
                const DeepCollectionEquality()
                    .equals(other.postTime, postTime)) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimestamp, serverTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postID) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(repostID) ^
      const DeepCollectionEquality().hash(postType) ^
      const DeepCollectionEquality().hash(postHeader) ^
      const DeepCollectionEquality().hash(postBody) ^
      const DeepCollectionEquality().hash(postImageURL) ^
      const DeepCollectionEquality().hash(postURL) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(commentable) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(repostable) ^
      const DeepCollectionEquality().hash(repostCount) ^
      const DeepCollectionEquality().hash(postTime) ^
      const DeepCollectionEquality().hash(serverTimestamp);

  @override
  _$PostDTOCopyWith<_PostDTO> get copyWith =>
      __$PostDTOCopyWithImpl<_PostDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDTOToJson(this);
  }
}

abstract class _PostDTO implements PostDTO {
  const factory _PostDTO(
          {@JsonKey(ignore: true) String postID,
          @required String senderID,
          @required String orgID,
          @required String eventID,
          @required String repostID,
          @required String postType,
          @required String postHeader,
          @required String postBody,
          @required String postImageURL,
          @required String postURL,
          @required int likeCount,
          @required bool commentable,
          @required int commentCount,
          @required bool repostable,
          @required int repostCount,
          @required @TimestampConverter() DateTime postTime,
          @required @ServerTimestampConverter() FieldValue serverTimestamp}) =
      _$_PostDTO;

  factory _PostDTO.fromJson(Map<String, dynamic> json) = _$_PostDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get postID;
  @override
  String get senderID;
  @override
  String get orgID;
  @override
  String get eventID;
  @override
  String get repostID;
  @override
  String get postType;
  @override
  String get postHeader;
  @override
  String get postBody;
  @override
  String get postImageURL;
  @override
  String get postURL;
  @override
  int get likeCount;
  @override
  bool get commentable;
  @override
  int get commentCount;
  @override
  bool get repostable;
  @override
  int get repostCount;
  @override
  @TimestampConverter()
  DateTime get postTime;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimestamp;
  @override
  _$PostDTOCopyWith<_PostDTO> get copyWith;
}
