// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomePostsEventTearOff {
  const _$HomePostsEventTearOff();

  GetData getData(String currentUserID) {
    return GetData(
      currentUserID,
    );
  }

  _PostsReceived postsReceived(
      Either<PostFailure, KtList<Post>> failureOrNotes) {
    return _PostsReceived(
      failureOrNotes,
    );
  }

  _RequestMoreData requestMoreData(String currentUserID) {
    return _RequestMoreData(
      currentUserID,
    );
  }
}

// ignore: unused_element
const $HomePostsEvent = _$HomePostsEventTearOff();

mixin _$HomePostsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    @required Result requestMoreData(String currentUserID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    Result requestMoreData(String currentUserID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result postsReceived(_PostsReceived value),
    @required Result requestMoreData(_RequestMoreData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result postsReceived(_PostsReceived value),
    Result requestMoreData(_RequestMoreData value),
    @required Result orElse(),
  });
}

abstract class $HomePostsEventCopyWith<$Res> {
  factory $HomePostsEventCopyWith(
          HomePostsEvent value, $Res Function(HomePostsEvent) then) =
      _$HomePostsEventCopyWithImpl<$Res>;
}

class _$HomePostsEventCopyWithImpl<$Res>
    implements $HomePostsEventCopyWith<$Res> {
  _$HomePostsEventCopyWithImpl(this._value, this._then);

  final HomePostsEvent _value;
  // ignore: unused_field
  final $Res Function(HomePostsEvent) _then;
}

abstract class $GetDataCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class _$GetDataCopyWithImpl<$Res> extends _$HomePostsEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(GetData(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'HomePostsEvent.getData(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    @required Result requestMoreData(String currentUserID),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return getData(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    Result requestMoreData(String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result postsReceived(_PostsReceived value),
    @required Result requestMoreData(_RequestMoreData value),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result postsReceived(_PostsReceived value),
    Result requestMoreData(_RequestMoreData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements HomePostsEvent {
  const factory GetData(String currentUserID) = _$GetData;

  String get currentUserID;
  $GetDataCopyWith<GetData> get copyWith;
}

abstract class _$PostsReceivedCopyWith<$Res> {
  factory _$PostsReceivedCopyWith(
          _PostsReceived value, $Res Function(_PostsReceived) then) =
      __$PostsReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<Post>> failureOrNotes});
}

class __$PostsReceivedCopyWithImpl<$Res>
    extends _$HomePostsEventCopyWithImpl<$Res>
    implements _$PostsReceivedCopyWith<$Res> {
  __$PostsReceivedCopyWithImpl(
      _PostsReceived _value, $Res Function(_PostsReceived) _then)
      : super(_value, (v) => _then(v as _PostsReceived));

  @override
  _PostsReceived get _value => super._value as _PostsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_PostsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<PostFailure, KtList<Post>>,
    ));
  }
}

class _$_PostsReceived implements _PostsReceived {
  const _$_PostsReceived(this.failureOrNotes) : assert(failureOrNotes != null);

  @override
  final Either<PostFailure, KtList<Post>> failureOrNotes;

  @override
  String toString() {
    return 'HomePostsEvent.postsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith =>
      __$PostsReceivedCopyWithImpl<_PostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    @required Result requestMoreData(String currentUserID),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return postsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    Result requestMoreData(String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result postsReceived(_PostsReceived value),
    @required Result requestMoreData(_RequestMoreData value),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result postsReceived(_PostsReceived value),
    Result requestMoreData(_RequestMoreData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostsReceived implements HomePostsEvent {
  const factory _PostsReceived(
      Either<PostFailure, KtList<Post>> failureOrNotes) = _$_PostsReceived;

  Either<PostFailure, KtList<Post>> get failureOrNotes;
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith;
}

abstract class _$RequestMoreDataCopyWith<$Res> {
  factory _$RequestMoreDataCopyWith(
          _RequestMoreData value, $Res Function(_RequestMoreData) then) =
      __$RequestMoreDataCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class __$RequestMoreDataCopyWithImpl<$Res>
    extends _$HomePostsEventCopyWithImpl<$Res>
    implements _$RequestMoreDataCopyWith<$Res> {
  __$RequestMoreDataCopyWithImpl(
      _RequestMoreData _value, $Res Function(_RequestMoreData) _then)
      : super(_value, (v) => _then(v as _RequestMoreData));

  @override
  _RequestMoreData get _value => super._value as _RequestMoreData;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(_RequestMoreData(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_RequestMoreData implements _RequestMoreData {
  const _$_RequestMoreData(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'HomePostsEvent.requestMoreData(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestMoreData &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  _$RequestMoreDataCopyWith<_RequestMoreData> get copyWith =>
      __$RequestMoreDataCopyWithImpl<_RequestMoreData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(String currentUserID),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    @required Result requestMoreData(String currentUserID),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return requestMoreData(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(String currentUserID),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrNotes),
    Result requestMoreData(String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestMoreData != null) {
      return requestMoreData(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
    @required Result postsReceived(_PostsReceived value),
    @required Result requestMoreData(_RequestMoreData value),
  }) {
    assert(getData != null);
    assert(postsReceived != null);
    assert(requestMoreData != null);
    return requestMoreData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    Result postsReceived(_PostsReceived value),
    Result requestMoreData(_RequestMoreData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestMoreData != null) {
      return requestMoreData(this);
    }
    return orElse();
  }
}

abstract class _RequestMoreData implements HomePostsEvent {
  const factory _RequestMoreData(String currentUserID) = _$_RequestMoreData;

  String get currentUserID;
  _$RequestMoreDataCopyWith<_RequestMoreData> get copyWith;
}

class _$HomePostsStateTearOff {
  const _$HomePostsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess({KtList<Post> posts, bool showSurvey}) {
    return LoadSuccess(
      posts: posts,
      showSurvey: showSurvey,
    );
  }

  LoadFailure loadFailure(PostFailure postFailure) {
    return LoadFailure(
      postFailure,
    );
  }
}

// ignore: unused_element
const $HomePostsState = _$HomePostsStateTearOff();

mixin _$HomePostsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts, bool showSurvey),
    @required Result loadFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts, bool showSurvey),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $HomePostsStateCopyWith<$Res> {
  factory $HomePostsStateCopyWith(
          HomePostsState value, $Res Function(HomePostsState) then) =
      _$HomePostsStateCopyWithImpl<$Res>;
}

class _$HomePostsStateCopyWithImpl<$Res>
    implements $HomePostsStateCopyWith<$Res> {
  _$HomePostsStateCopyWithImpl(this._value, this._then);

  final HomePostsState _value;
  // ignore: unused_field
  final $Res Function(HomePostsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$HomePostsStateCopyWithImpl<$Res>
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
    return 'HomePostsState.initial()';
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
    @required Result loadSuccess(KtList<Post> posts, bool showSurvey),
    @required Result loadFailure(PostFailure postFailure),
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
    Result loadSuccess(KtList<Post> posts, bool showSurvey),
    Result loadFailure(PostFailure postFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class Initial implements HomePostsState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$HomePostsStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'HomePostsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts, bool showSurvey),
    @required Result loadFailure(PostFailure postFailure),
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
    Result loadSuccess(KtList<Post> posts, bool showSurvey),
    Result loadFailure(PostFailure postFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class DataTransferInProgress implements HomePostsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Post> posts, bool showSurvey});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$HomePostsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object posts = freezed,
    Object showSurvey = freezed,
  }) {
    return _then(LoadSuccess(
      posts: posts == freezed ? _value.posts : posts as KtList<Post>,
      showSurvey:
          showSurvey == freezed ? _value.showSurvey : showSurvey as bool,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({this.posts, this.showSurvey});

  @override
  final KtList<Post> posts;
  @override
  final bool showSurvey;

  @override
  String toString() {
    return 'HomePostsState.loadSuccess(posts: $posts, showSurvey: $showSurvey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.showSurvey, showSurvey) ||
                const DeepCollectionEquality()
                    .equals(other.showSurvey, showSurvey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(showSurvey);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts, bool showSurvey),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(posts, showSurvey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts, bool showSurvey),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(posts, showSurvey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadSuccess implements HomePostsState {
  const factory LoadSuccess({KtList<Post> posts, bool showSurvey}) =
      _$LoadSuccess;

  KtList<Post> get posts;
  bool get showSurvey;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$HomePostsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(LoadFailure(
      postFailure == freezed ? _value.postFailure : postFailure as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get postFailure {
    if (_value.postFailure == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'HomePostsState.loadFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts, bool showSurvey),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts, bool showSurvey),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadFailure implements HomePostsState {
  const factory LoadFailure(PostFailure postFailure) = _$LoadFailure;

  PostFailure get postFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
