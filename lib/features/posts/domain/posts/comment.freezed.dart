// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommentTearOff {
  const _$CommentTearOff();

  _Comment call(
      {@required CommentID commentID,
      @required SenderID senderID,
      @required CommentBody commentBody,
      @required CommentDate commentDate}) {
    return _Comment(
      commentID: commentID,
      senderID: senderID,
      commentBody: commentBody,
      commentDate: commentDate,
    );
  }
}

// ignore: unused_element
const $Comment = _$CommentTearOff();

mixin _$Comment {
  CommentID get commentID;
  SenderID get senderID;
  CommentBody get commentBody;
  CommentDate get commentDate;

  $CommentCopyWith<Comment> get copyWith;
}

abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {CommentID commentID,
      SenderID senderID,
      CommentBody commentBody,
      CommentDate commentDate});
}

class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object commentID = freezed,
    Object senderID = freezed,
    Object commentBody = freezed,
    Object commentDate = freezed,
  }) {
    return _then(_value.copyWith(
      commentID:
          commentID == freezed ? _value.commentID : commentID as CommentID,
      senderID: senderID == freezed ? _value.senderID : senderID as SenderID,
      commentBody: commentBody == freezed
          ? _value.commentBody
          : commentBody as CommentBody,
      commentDate: commentDate == freezed
          ? _value.commentDate
          : commentDate as CommentDate,
    ));
  }
}

abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {CommentID commentID,
      SenderID senderID,
      CommentBody commentBody,
      CommentDate commentDate});
}

class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object commentID = freezed,
    Object senderID = freezed,
    Object commentBody = freezed,
    Object commentDate = freezed,
  }) {
    return _then(_Comment(
      commentID:
          commentID == freezed ? _value.commentID : commentID as CommentID,
      senderID: senderID == freezed ? _value.senderID : senderID as SenderID,
      commentBody: commentBody == freezed
          ? _value.commentBody
          : commentBody as CommentBody,
      commentDate: commentDate == freezed
          ? _value.commentDate
          : commentDate as CommentDate,
    ));
  }
}

class _$_Comment extends _Comment {
  const _$_Comment(
      {@required this.commentID,
      @required this.senderID,
      @required this.commentBody,
      @required this.commentDate})
      : assert(commentID != null),
        assert(senderID != null),
        assert(commentBody != null),
        assert(commentDate != null),
        super._();

  @override
  final CommentID commentID;
  @override
  final SenderID senderID;
  @override
  final CommentBody commentBody;
  @override
  final CommentDate commentDate;

  @override
  String toString() {
    return 'Comment(commentID: $commentID, senderID: $senderID, commentBody: $commentBody, commentDate: $commentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.commentID, commentID) ||
                const DeepCollectionEquality()
                    .equals(other.commentID, commentID)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.commentBody, commentBody) ||
                const DeepCollectionEquality()
                    .equals(other.commentBody, commentBody)) &&
            (identical(other.commentDate, commentDate) ||
                const DeepCollectionEquality()
                    .equals(other.commentDate, commentDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentID) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(commentBody) ^
      const DeepCollectionEquality().hash(commentDate);

  @override
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);
}

abstract class _Comment extends Comment {
  const _Comment._() : super._();
  const factory _Comment(
      {@required CommentID commentID,
      @required SenderID senderID,
      @required CommentBody commentBody,
      @required CommentDate commentDate}) = _$_Comment;

  @override
  CommentID get commentID;
  @override
  SenderID get senderID;
  @override
  CommentBody get commentBody;
  @override
  CommentDate get commentDate;
  @override
  _$CommentCopyWith<_Comment> get copyWith;
}
