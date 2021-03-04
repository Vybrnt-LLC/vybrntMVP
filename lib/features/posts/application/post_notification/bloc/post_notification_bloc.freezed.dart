// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostNotificationEventTearOff {
  const _$PostNotificationEventTearOff();

  GetPost getPost(
      {String postID, String type, String typeID, String currentUserID}) {
    return GetPost(
      postID: postID,
      type: type,
      typeID: typeID,
      currentUserID: currentUserID,
    );
  }
}

// ignore: unused_element
const $PostNotificationEvent = _$PostNotificationEventTearOff();

mixin _$PostNotificationEvent {
  String get postID;
  String get type;
  String get typeID;
  String get currentUserID;

  $PostNotificationEventCopyWith<PostNotificationEvent> get copyWith;
}

abstract class $PostNotificationEventCopyWith<$Res> {
  factory $PostNotificationEventCopyWith(PostNotificationEvent value,
          $Res Function(PostNotificationEvent) then) =
      _$PostNotificationEventCopyWithImpl<$Res>;
  $Res call({String postID, String type, String typeID, String currentUserID});
}

class _$PostNotificationEventCopyWithImpl<$Res>
    implements $PostNotificationEventCopyWith<$Res> {
  _$PostNotificationEventCopyWithImpl(this._value, this._then);

  final PostNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(PostNotificationEvent) _then;

  @override
  $Res call({
    Object postID = freezed,
    Object type = freezed,
    Object typeID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_value.copyWith(
      postID: postID == freezed ? _value.postID : postID as String,
      type: type == freezed ? _value.type : type as String,
      typeID: typeID == freezed ? _value.typeID : typeID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

abstract class $GetPostCopyWith<$Res>
    implements $PostNotificationEventCopyWith<$Res> {
  factory $GetPostCopyWith(GetPost value, $Res Function(GetPost) then) =
      _$GetPostCopyWithImpl<$Res>;
  @override
  $Res call({String postID, String type, String typeID, String currentUserID});
}

class _$GetPostCopyWithImpl<$Res>
    extends _$PostNotificationEventCopyWithImpl<$Res>
    implements $GetPostCopyWith<$Res> {
  _$GetPostCopyWithImpl(GetPost _value, $Res Function(GetPost) _then)
      : super(_value, (v) => _then(v as GetPost));

  @override
  GetPost get _value => super._value as GetPost;

  @override
  $Res call({
    Object postID = freezed,
    Object type = freezed,
    Object typeID = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(GetPost(
      postID: postID == freezed ? _value.postID : postID as String,
      type: type == freezed ? _value.type : type as String,
      typeID: typeID == freezed ? _value.typeID : typeID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$GetPost implements GetPost {
  const _$GetPost({this.postID, this.type, this.typeID, this.currentUserID});

  @override
  final String postID;
  @override
  final String type;
  @override
  final String typeID;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostNotificationEvent.getPost(postID: $postID, type: $type, typeID: $typeID, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPost &&
            (identical(other.postID, postID) ||
                const DeepCollectionEquality().equals(other.postID, postID)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.typeID, typeID) ||
                const DeepCollectionEquality().equals(other.typeID, typeID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postID) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(typeID) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetPostCopyWith<GetPost> get copyWith =>
      _$GetPostCopyWithImpl<GetPost>(this, _$identity);
}

abstract class GetPost implements PostNotificationEvent {
  const factory GetPost(
      {String postID,
      String type,
      String typeID,
      String currentUserID}) = _$GetPost;

  @override
  String get postID;
  @override
  String get type;
  @override
  String get typeID;
  @override
  String get currentUserID;
  @override
  $GetPostCopyWith<GetPost> get copyWith;
}

class _$PostNotificationStateTearOff {
  const _$PostNotificationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Post post) {
    return _LoadSuccess(
      post,
    );
  }

  _LoadFailure loadFailure(PostFailure f) {
    return _LoadFailure(
      f,
    );
  }
}

// ignore: unused_element
const $PostNotificationState = _$PostNotificationStateTearOff();

mixin _$PostNotificationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Post post),
    @required Result loadFailure(PostFailure f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Post post),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $PostNotificationStateCopyWith<$Res> {
  factory $PostNotificationStateCopyWith(PostNotificationState value,
          $Res Function(PostNotificationState) then) =
      _$PostNotificationStateCopyWithImpl<$Res>;
}

class _$PostNotificationStateCopyWithImpl<$Res>
    implements $PostNotificationStateCopyWith<$Res> {
  _$PostNotificationStateCopyWithImpl(this._value, this._then);

  final PostNotificationState _value;
  // ignore: unused_field
  final $Res Function(PostNotificationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$PostNotificationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostNotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Post post),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Post post),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostNotificationState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PostNotificationStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PostNotificationState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Post post),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Post post),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostNotificationState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Post post});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PostNotificationStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_LoadSuccess(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostNotificationState.loadSuccess(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Post post),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Post post),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PostNotificationState {
  const factory _LoadSuccess(Post post) = _$_LoadSuccess;

  Post get post;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure f});

  $PostFailureCopyWith<$Res> get f;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$PostNotificationStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_LoadFailure(
      f == freezed ? _value.f : f as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.f) : assert(f != null);

  @override
  final PostFailure f;

  @override
  String toString() {
    return 'PostNotificationState.loadFailure(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Post post),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(f);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Post post),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PostNotificationState {
  const factory _LoadFailure(PostFailure f) = _$_LoadFailure;

  PostFailure get f;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
