// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'comment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommentActorEventTearOff {
  const _$CommentActorEventTearOff();

  _GetData getData(Comment comment) {
    return _GetData(
      comment,
    );
  }

  _DeleteComment deleteComment(Post post, Comment comment) {
    return _DeleteComment(
      post,
      comment,
    );
  }
}

// ignore: unused_element
const $CommentActorEvent = _$CommentActorEventTearOff();

mixin _$CommentActorEvent {
  Comment get comment;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Comment comment),
    @required Result deleteComment(Post post, Comment comment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Comment comment),
    Result deleteComment(Post post, Comment comment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result deleteComment(_DeleteComment value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result deleteComment(_DeleteComment value),
    @required Result orElse(),
  });

  $CommentActorEventCopyWith<CommentActorEvent> get copyWith;
}

abstract class $CommentActorEventCopyWith<$Res> {
  factory $CommentActorEventCopyWith(
          CommentActorEvent value, $Res Function(CommentActorEvent) then) =
      _$CommentActorEventCopyWithImpl<$Res>;
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

class _$CommentActorEventCopyWithImpl<$Res>
    implements $CommentActorEventCopyWith<$Res> {
  _$CommentActorEventCopyWithImpl(this._value, this._then);

  final CommentActorEvent _value;
  // ignore: unused_field
  final $Res Function(CommentActorEvent) _then;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as Comment,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    if (_value.comment == null) {
      return null;
    }
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

abstract class _$GetDataCopyWith<$Res>
    implements $CommentActorEventCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({Comment comment});

  @override
  $CommentCopyWith<$Res> get comment;
}

class __$GetDataCopyWithImpl<$Res> extends _$CommentActorEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(_GetData(
      comment == freezed ? _value.comment : comment as Comment,
    ));
  }
}

class _$_GetData implements _GetData {
  const _$_GetData(this.comment) : assert(comment != null);

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommentActorEvent.getData(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Comment comment),
    @required Result deleteComment(Post post, Comment comment),
  }) {
    assert(getData != null);
    assert(deleteComment != null);
    return getData(comment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Comment comment),
    Result deleteComment(Post post, Comment comment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result deleteComment(_DeleteComment value),
  }) {
    assert(getData != null);
    assert(deleteComment != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result deleteComment(_DeleteComment value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements CommentActorEvent {
  const factory _GetData(Comment comment) = _$_GetData;

  @override
  Comment get comment;
  @override
  _$GetDataCopyWith<_GetData> get copyWith;
}

abstract class _$DeleteCommentCopyWith<$Res>
    implements $CommentActorEventCopyWith<$Res> {
  factory _$DeleteCommentCopyWith(
          _DeleteComment value, $Res Function(_DeleteComment) then) =
      __$DeleteCommentCopyWithImpl<$Res>;
  @override
  $Res call({Post post, Comment comment});

  $PostCopyWith<$Res> get post;
  @override
  $CommentCopyWith<$Res> get comment;
}

class __$DeleteCommentCopyWithImpl<$Res>
    extends _$CommentActorEventCopyWithImpl<$Res>
    implements _$DeleteCommentCopyWith<$Res> {
  __$DeleteCommentCopyWithImpl(
      _DeleteComment _value, $Res Function(_DeleteComment) _then)
      : super(_value, (v) => _then(v as _DeleteComment));

  @override
  _DeleteComment get _value => super._value as _DeleteComment;

  @override
  $Res call({
    Object post = freezed,
    Object comment = freezed,
  }) {
    return _then(_DeleteComment(
      post == freezed ? _value.post : post as Post,
      comment == freezed ? _value.comment : comment as Comment,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

class _$_DeleteComment implements _DeleteComment {
  const _$_DeleteComment(this.post, this.comment)
      : assert(post != null),
        assert(comment != null);

  @override
  final Post post;
  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommentActorEvent.deleteComment(post: $post, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteComment &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$DeleteCommentCopyWith<_DeleteComment> get copyWith =>
      __$DeleteCommentCopyWithImpl<_DeleteComment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(Comment comment),
    @required Result deleteComment(Post post, Comment comment),
  }) {
    assert(getData != null);
    assert(deleteComment != null);
    return deleteComment(post, comment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(Comment comment),
    Result deleteComment(Post post, Comment comment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComment != null) {
      return deleteComment(post, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result deleteComment(_DeleteComment value),
  }) {
    assert(getData != null);
    assert(deleteComment != null);
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result deleteComment(_DeleteComment value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class _DeleteComment implements CommentActorEvent {
  const factory _DeleteComment(Post post, Comment comment) = _$_DeleteComment;

  Post get post;
  @override
  Comment get comment;
  @override
  _$DeleteCommentCopyWith<_DeleteComment> get copyWith;
}

class _$CommentActorStateTearOff {
  const _$CommentActorStateTearOff();

  _CommentActorState call(User senderUser) {
    return _CommentActorState(
      senderUser,
    );
  }
}

// ignore: unused_element
const $CommentActorState = _$CommentActorStateTearOff();

mixin _$CommentActorState {
  User get senderUser;

  $CommentActorStateCopyWith<CommentActorState> get copyWith;
}

abstract class $CommentActorStateCopyWith<$Res> {
  factory $CommentActorStateCopyWith(
          CommentActorState value, $Res Function(CommentActorState) then) =
      _$CommentActorStateCopyWithImpl<$Res>;
  $Res call({User senderUser});

  $UserCopyWith<$Res> get senderUser;
}

class _$CommentActorStateCopyWithImpl<$Res>
    implements $CommentActorStateCopyWith<$Res> {
  _$CommentActorStateCopyWithImpl(this._value, this._then);

  final CommentActorState _value;
  // ignore: unused_field
  final $Res Function(CommentActorState) _then;

  @override
  $Res call({
    Object senderUser = freezed,
  }) {
    return _then(_value.copyWith(
      senderUser:
          senderUser == freezed ? _value.senderUser : senderUser as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get senderUser {
    if (_value.senderUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.senderUser, (value) {
      return _then(_value.copyWith(senderUser: value));
    });
  }
}

abstract class _$CommentActorStateCopyWith<$Res>
    implements $CommentActorStateCopyWith<$Res> {
  factory _$CommentActorStateCopyWith(
          _CommentActorState value, $Res Function(_CommentActorState) then) =
      __$CommentActorStateCopyWithImpl<$Res>;
  @override
  $Res call({User senderUser});

  @override
  $UserCopyWith<$Res> get senderUser;
}

class __$CommentActorStateCopyWithImpl<$Res>
    extends _$CommentActorStateCopyWithImpl<$Res>
    implements _$CommentActorStateCopyWith<$Res> {
  __$CommentActorStateCopyWithImpl(
      _CommentActorState _value, $Res Function(_CommentActorState) _then)
      : super(_value, (v) => _then(v as _CommentActorState));

  @override
  _CommentActorState get _value => super._value as _CommentActorState;

  @override
  $Res call({
    Object senderUser = freezed,
  }) {
    return _then(_CommentActorState(
      senderUser == freezed ? _value.senderUser : senderUser as User,
    ));
  }
}

class _$_CommentActorState implements _CommentActorState {
  const _$_CommentActorState(this.senderUser) : assert(senderUser != null);

  @override
  final User senderUser;

  @override
  String toString() {
    return 'CommentActorState(senderUser: $senderUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentActorState &&
            (identical(other.senderUser, senderUser) ||
                const DeepCollectionEquality()
                    .equals(other.senderUser, senderUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(senderUser);

  @override
  _$CommentActorStateCopyWith<_CommentActorState> get copyWith =>
      __$CommentActorStateCopyWithImpl<_CommentActorState>(this, _$identity);
}

abstract class _CommentActorState implements CommentActorState {
  const factory _CommentActorState(User senderUser) = _$_CommentActorState;

  @override
  User get senderUser;
  @override
  _$CommentActorStateCopyWith<_CommentActorState> get copyWith;
}
