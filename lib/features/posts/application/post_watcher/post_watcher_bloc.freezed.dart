// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostWatcherEventTearOff {
  const _$PostWatcherEventTearOff();

  _PostsReceived postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) {
    return _PostsReceived(
      failureOrPosts,
    );
  }

  _GetData getData(String postCollectionID, bool isOrg) {
    return _GetData(
      postCollectionID,
      isOrg,
    );
  }
}

// ignore: unused_element
const $PostWatcherEvent = _$PostWatcherEventTearOff();

mixin _$PostWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result getData(String postCollectionID, bool isOrg),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    Result getData(String postCollectionID, bool isOrg),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postsReceived(_PostsReceived value),
    @required Result getData(_GetData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postsReceived(_PostsReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  });
}

abstract class $PostWatcherEventCopyWith<$Res> {
  factory $PostWatcherEventCopyWith(
          PostWatcherEvent value, $Res Function(PostWatcherEvent) then) =
      _$PostWatcherEventCopyWithImpl<$Res>;
}

class _$PostWatcherEventCopyWithImpl<$Res>
    implements $PostWatcherEventCopyWith<$Res> {
  _$PostWatcherEventCopyWithImpl(this._value, this._then);

  final PostWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(PostWatcherEvent) _then;
}

abstract class _$PostsReceivedCopyWith<$Res> {
  factory _$PostsReceivedCopyWith(
          _PostsReceived value, $Res Function(_PostsReceived) then) =
      __$PostsReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<Post>> failureOrPosts});
}

class __$PostsReceivedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$PostsReceivedCopyWith<$Res> {
  __$PostsReceivedCopyWithImpl(
      _PostsReceived _value, $Res Function(_PostsReceived) _then)
      : super(_value, (v) => _then(v as _PostsReceived));

  @override
  _PostsReceived get _value => super._value as _PostsReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_PostsReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<Post>>,
    ));
  }
}

class _$_PostsReceived implements _PostsReceived {
  const _$_PostsReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<Post>> failureOrPosts;

  @override
  String toString() {
    return 'PostWatcherEvent.postsReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith =>
      __$PostsReceivedCopyWithImpl<_PostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result getData(String postCollectionID, bool isOrg),
  }) {
    assert(postsReceived != null);
    assert(getData != null);
    return postsReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    Result getData(String postCollectionID, bool isOrg),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postsReceived(_PostsReceived value),
    @required Result getData(_GetData value),
  }) {
    assert(postsReceived != null);
    assert(getData != null);
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postsReceived(_PostsReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostsReceived implements PostWatcherEvent {
  const factory _PostsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _$_PostsReceived;

  Either<PostFailure, KtList<Post>> get failureOrPosts;
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith;
}

abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  $Res call({String postCollectionID, bool isOrg});
}

class __$GetDataCopyWithImpl<$Res> extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object postCollectionID = freezed,
    Object isOrg = freezed,
  }) {
    return _then(_GetData(
      postCollectionID == freezed
          ? _value.postCollectionID
          : postCollectionID as String,
      isOrg == freezed ? _value.isOrg : isOrg as bool,
    ));
  }
}

class _$_GetData implements _GetData {
  const _$_GetData(this.postCollectionID, this.isOrg)
      : assert(postCollectionID != null),
        assert(isOrg != null);

  @override
  final String postCollectionID;
  @override
  final bool isOrg;

  @override
  String toString() {
    return 'PostWatcherEvent.getData(postCollectionID: $postCollectionID, isOrg: $isOrg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.postCollectionID, postCollectionID) ||
                const DeepCollectionEquality()
                    .equals(other.postCollectionID, postCollectionID)) &&
            (identical(other.isOrg, isOrg) ||
                const DeepCollectionEquality().equals(other.isOrg, isOrg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postCollectionID) ^
      const DeepCollectionEquality().hash(isOrg);

  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result getData(String postCollectionID, bool isOrg),
  }) {
    assert(postsReceived != null);
    assert(getData != null);
    return getData(postCollectionID, isOrg);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    Result getData(String postCollectionID, bool isOrg),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(postCollectionID, isOrg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result postsReceived(_PostsReceived value),
    @required Result getData(_GetData value),
  }) {
    assert(postsReceived != null);
    assert(getData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result postsReceived(_PostsReceived value),
    Result getData(_GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements PostWatcherEvent {
  const factory _GetData(String postCollectionID, bool isOrg) = _$_GetData;

  String get postCollectionID;
  bool get isOrg;
  _$GetDataCopyWith<_GetData> get copyWith;
}

class _$PostWatcherStateTearOff {
  const _$PostWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(KtList<Post> posts) {
    return LoadSuccess(
      posts,
    );
  }

  LoadFailure loadFailure(PostFailure f) {
    return LoadFailure(
      f,
    );
  }
}

// ignore: unused_element
const $PostWatcherState = _$PostWatcherStateTearOff();

mixin _$PostWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure f),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $PostWatcherStateCopyWith<$Res> {
  factory $PostWatcherStateCopyWith(
          PostWatcherState value, $Res Function(PostWatcherState) then) =
      _$PostWatcherStateCopyWithImpl<$Res>;
}

class _$PostWatcherStateCopyWithImpl<$Res>
    implements $PostWatcherStateCopyWith<$Res> {
  _$PostWatcherStateCopyWithImpl(this._value, this._then);

  final PostWatcherState _value;
  // ignore: unused_field
  final $Res Function(PostWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$PostWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PostWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
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
    Result loadSuccess(KtList<Post> posts),
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
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
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
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PostWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

class _$LoadInProgressCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'PostWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
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
    Result loadSuccess(KtList<Post> posts),
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
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
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
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements PostWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Post> posts});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(LoadSuccess(
      posts == freezed ? _value.posts : posts as KtList<Post>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.posts) : assert(posts != null);

  @override
  final KtList<Post> posts;

  @override
  String toString() {
    return 'PostWatcherState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure f),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure f),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
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
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements PostWatcherState {
  const factory LoadSuccess(KtList<Post> posts) = _$LoadSuccess;

  KtList<Post> get posts;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure f});

  $PostFailureCopyWith<$Res> get f;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(LoadFailure(
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

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.f) : assert(f != null);

  @override
  final PostFailure f;

  @override
  String toString() {
    return 'PostWatcherState.loadFailure(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
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
    Result loadSuccess(KtList<Post> posts),
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
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
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
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements PostWatcherState {
  const factory LoadFailure(PostFailure f) = _$LoadFailure;

  PostFailure get f;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
