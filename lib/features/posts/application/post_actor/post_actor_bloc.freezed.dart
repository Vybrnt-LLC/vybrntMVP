// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostActorEventTearOff {
  const _$PostActorEventTearOff();

  _GetData getData(Post post,
      {String senderID, String currentUserID, String orgID}) {
    return _GetData(
      post,
      senderID: senderID,
      currentUserID: currentUserID,
      orgID: orgID,
    );
  }

  _Opened openPostDetail(Post post, {bool commenting}) {
    return _Opened(
      post,
      commenting: commenting,
    );
  }

  _Delete delete(Post post) {
    return _Delete(
      post,
    );
  }

  _CommentBodyChanged commentBodyChanged(String commnentBody) {
    return _CommentBodyChanged(
      commnentBody,
    );
  }

  _SubmitComment submitComment(String currentUserID, Post post) {
    return _SubmitComment(
      currentUserID,
      post,
    );
  }

  _LikesReceived likesReceived(
      Either<PostFailure, KtList<String>> likesOrFailure,
      String currentUserID) {
    return _LikesReceived(
      likesOrFailure,
      currentUserID,
    );
  }

  _RepostsReceived repostsReceived(
      Either<PostFailure, KtList<String>> repostsOrFailure,
      String currentUserID) {
    return _RepostsReceived(
      repostsOrFailure,
      currentUserID,
    );
  }

  _CommentsReceived commentsReceived(
      Either<PostFailure, KtList<Comment>> commentsOrFailure,
      String currentUserID) {
    return _CommentsReceived(
      commentsOrFailure,
      currentUserID,
    );
  }

  _BookmarksReceived bookmarksReceived(
      Either<PostFailure, KtList<String>> bookmarksOrFailure,
      String currentUserID) {
    return _BookmarksReceived(
      bookmarksOrFailure,
      currentUserID,
    );
  }

  _Liked toggleLikePost(Post post, String currentUserID) {
    return _Liked(
      post,
      currentUserID,
    );
  }

  _Reposted toggleRepostPost(Post post, String currentUserID) {
    return _Reposted(
      post,
      currentUserID,
    );
  }

  _Bookmarked toggleBookmarkPost(Post post, String currentUserID) {
    return _Bookmarked(
      post,
      currentUserID,
    );
  }

  _SetCurrentScreen setCurrentScreen() {
    return const _SetCurrentScreen();
  }

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
const $PostActorEvent = _$PostActorEventTearOff();

mixin _$PostActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  });
}

abstract class $PostActorEventCopyWith<$Res> {
  factory $PostActorEventCopyWith(
          PostActorEvent value, $Res Function(PostActorEvent) then) =
      _$PostActorEventCopyWithImpl<$Res>;
}

class _$PostActorEventCopyWithImpl<$Res>
    implements $PostActorEventCopyWith<$Res> {
  _$PostActorEventCopyWithImpl(this._value, this._then);

  final PostActorEvent _value;
  // ignore: unused_field
  final $Res Function(PostActorEvent) _then;
}

abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
  $Res call({Post post, String senderID, String currentUserID, String orgID});

  $PostCopyWith<$Res> get post;
}

class __$GetDataCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;

  @override
  $Res call({
    Object post = freezed,
    Object senderID = freezed,
    Object currentUserID = freezed,
    Object orgID = freezed,
  }) {
    return _then(_GetData(
      post == freezed ? _value.post : post as Post,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
      orgID: orgID == freezed ? _value.orgID : orgID as String,
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

class _$_GetData implements _GetData {
  const _$_GetData(this.post, {this.senderID, this.currentUserID, this.orgID})
      : assert(post != null);

  @override
  final Post post;
  @override
  final String senderID;
  @override
  final String currentUserID;
  @override
  final String orgID;

  @override
  String toString() {
    return 'PostActorEvent.getData(post: $post, senderID: $senderID, currentUserID: $currentUserID, orgID: $orgID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetData &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(orgID);

  @override
  _$GetDataCopyWith<_GetData> get copyWith =>
      __$GetDataCopyWithImpl<_GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return getData(post, senderID, currentUserID, orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(post, senderID, currentUserID, orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements PostActorEvent {
  const factory _GetData(Post post,
      {String senderID, String currentUserID, String orgID}) = _$_GetData;

  Post get post;
  String get senderID;
  String get currentUserID;
  String get orgID;
  _$GetDataCopyWith<_GetData> get copyWith;
}

abstract class _$OpenedCopyWith<$Res> {
  factory _$OpenedCopyWith(_Opened value, $Res Function(_Opened) then) =
      __$OpenedCopyWithImpl<$Res>;
  $Res call({Post post, bool commenting});

  $PostCopyWith<$Res> get post;
}

class __$OpenedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$OpenedCopyWith<$Res> {
  __$OpenedCopyWithImpl(_Opened _value, $Res Function(_Opened) _then)
      : super(_value, (v) => _then(v as _Opened));

  @override
  _Opened get _value => super._value as _Opened;

  @override
  $Res call({
    Object post = freezed,
    Object commenting = freezed,
  }) {
    return _then(_Opened(
      post == freezed ? _value.post : post as Post,
      commenting:
          commenting == freezed ? _value.commenting : commenting as bool,
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

class _$_Opened implements _Opened {
  const _$_Opened(this.post, {this.commenting}) : assert(post != null);

  @override
  final Post post;
  @override
  final bool commenting;

  @override
  String toString() {
    return 'PostActorEvent.openPostDetail(post: $post, commenting: $commenting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Opened &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.commenting, commenting) ||
                const DeepCollectionEquality()
                    .equals(other.commenting, commenting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(commenting);

  @override
  _$OpenedCopyWith<_Opened> get copyWith =>
      __$OpenedCopyWithImpl<_Opened>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return openPostDetail(post, commenting);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openPostDetail != null) {
      return openPostDetail(post, commenting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return openPostDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openPostDetail != null) {
      return openPostDetail(this);
    }
    return orElse();
  }
}

abstract class _Opened implements PostActorEvent {
  const factory _Opened(Post post, {bool commenting}) = _$_Opened;

  Post get post;
  bool get commenting;
  _$OpenedCopyWith<_Opened> get copyWith;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

class __$DeleteCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_Delete(
      post == freezed ? _value.post : post as Post,
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

class _$_Delete implements _Delete {
  const _$_Delete(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.delete(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return delete(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements PostActorEvent {
  const factory _Delete(Post post) = _$_Delete;

  Post get post;
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$CommentBodyChangedCopyWith<$Res> {
  factory _$CommentBodyChangedCopyWith(
          _CommentBodyChanged value, $Res Function(_CommentBodyChanged) then) =
      __$CommentBodyChangedCopyWithImpl<$Res>;
  $Res call({String commnentBody});
}

class __$CommentBodyChangedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$CommentBodyChangedCopyWith<$Res> {
  __$CommentBodyChangedCopyWithImpl(
      _CommentBodyChanged _value, $Res Function(_CommentBodyChanged) _then)
      : super(_value, (v) => _then(v as _CommentBodyChanged));

  @override
  _CommentBodyChanged get _value => super._value as _CommentBodyChanged;

  @override
  $Res call({
    Object commnentBody = freezed,
  }) {
    return _then(_CommentBodyChanged(
      commnentBody == freezed ? _value.commnentBody : commnentBody as String,
    ));
  }
}

class _$_CommentBodyChanged implements _CommentBodyChanged {
  const _$_CommentBodyChanged(this.commnentBody) : assert(commnentBody != null);

  @override
  final String commnentBody;

  @override
  String toString() {
    return 'PostActorEvent.commentBodyChanged(commnentBody: $commnentBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentBodyChanged &&
            (identical(other.commnentBody, commnentBody) ||
                const DeepCollectionEquality()
                    .equals(other.commnentBody, commnentBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commnentBody);

  @override
  _$CommentBodyChangedCopyWith<_CommentBodyChanged> get copyWith =>
      __$CommentBodyChangedCopyWithImpl<_CommentBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return commentBodyChanged(commnentBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentBodyChanged != null) {
      return commentBodyChanged(commnentBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return commentBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentBodyChanged != null) {
      return commentBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentBodyChanged implements PostActorEvent {
  const factory _CommentBodyChanged(String commnentBody) =
      _$_CommentBodyChanged;

  String get commnentBody;
  _$CommentBodyChangedCopyWith<_CommentBodyChanged> get copyWith;
}

abstract class _$SubmitCommentCopyWith<$Res> {
  factory _$SubmitCommentCopyWith(
          _SubmitComment value, $Res Function(_SubmitComment) then) =
      __$SubmitCommentCopyWithImpl<$Res>;
  $Res call({String currentUserID, Post post});

  $PostCopyWith<$Res> get post;
}

class __$SubmitCommentCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$SubmitCommentCopyWith<$Res> {
  __$SubmitCommentCopyWithImpl(
      _SubmitComment _value, $Res Function(_SubmitComment) _then)
      : super(_value, (v) => _then(v as _SubmitComment));

  @override
  _SubmitComment get _value => super._value as _SubmitComment;

  @override
  $Res call({
    Object currentUserID = freezed,
    Object post = freezed,
  }) {
    return _then(_SubmitComment(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
      post == freezed ? _value.post : post as Post,
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

class _$_SubmitComment implements _SubmitComment {
  const _$_SubmitComment(this.currentUserID, this.post)
      : assert(currentUserID != null),
        assert(post != null);

  @override
  final String currentUserID;
  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.submitComment(currentUserID: $currentUserID, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitComment &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUserID) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$SubmitCommentCopyWith<_SubmitComment> get copyWith =>
      __$SubmitCommentCopyWithImpl<_SubmitComment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return submitComment(currentUserID, post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitComment != null) {
      return submitComment(currentUserID, post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return submitComment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitComment != null) {
      return submitComment(this);
    }
    return orElse();
  }
}

abstract class _SubmitComment implements PostActorEvent {
  const factory _SubmitComment(String currentUserID, Post post) =
      _$_SubmitComment;

  String get currentUserID;
  Post get post;
  _$SubmitCommentCopyWith<_SubmitComment> get copyWith;
}

abstract class _$LikesReceivedCopyWith<$Res> {
  factory _$LikesReceivedCopyWith(
          _LikesReceived value, $Res Function(_LikesReceived) then) =
      __$LikesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PostFailure, KtList<String>> likesOrFailure,
      String currentUserID});
}

class __$LikesReceivedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$LikesReceivedCopyWith<$Res> {
  __$LikesReceivedCopyWithImpl(
      _LikesReceived _value, $Res Function(_LikesReceived) _then)
      : super(_value, (v) => _then(v as _LikesReceived));

  @override
  _LikesReceived get _value => super._value as _LikesReceived;

  @override
  $Res call({
    Object likesOrFailure = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_LikesReceived(
      likesOrFailure == freezed
          ? _value.likesOrFailure
          : likesOrFailure as Either<PostFailure, KtList<String>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_LikesReceived implements _LikesReceived {
  const _$_LikesReceived(this.likesOrFailure, this.currentUserID)
      : assert(likesOrFailure != null),
        assert(currentUserID != null);

  @override
  final Either<PostFailure, KtList<String>> likesOrFailure;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.likesReceived(likesOrFailure: $likesOrFailure, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikesReceived &&
            (identical(other.likesOrFailure, likesOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.likesOrFailure, likesOrFailure)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likesOrFailure) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$LikesReceivedCopyWith<_LikesReceived> get copyWith =>
      __$LikesReceivedCopyWithImpl<_LikesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return likesReceived(likesOrFailure, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likesReceived != null) {
      return likesReceived(likesOrFailure, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return likesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likesReceived != null) {
      return likesReceived(this);
    }
    return orElse();
  }
}

abstract class _LikesReceived implements PostActorEvent {
  const factory _LikesReceived(
      Either<PostFailure, KtList<String>> likesOrFailure,
      String currentUserID) = _$_LikesReceived;

  Either<PostFailure, KtList<String>> get likesOrFailure;
  String get currentUserID;
  _$LikesReceivedCopyWith<_LikesReceived> get copyWith;
}

abstract class _$RepostsReceivedCopyWith<$Res> {
  factory _$RepostsReceivedCopyWith(
          _RepostsReceived value, $Res Function(_RepostsReceived) then) =
      __$RepostsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PostFailure, KtList<String>> repostsOrFailure,
      String currentUserID});
}

class __$RepostsReceivedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$RepostsReceivedCopyWith<$Res> {
  __$RepostsReceivedCopyWithImpl(
      _RepostsReceived _value, $Res Function(_RepostsReceived) _then)
      : super(_value, (v) => _then(v as _RepostsReceived));

  @override
  _RepostsReceived get _value => super._value as _RepostsReceived;

  @override
  $Res call({
    Object repostsOrFailure = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_RepostsReceived(
      repostsOrFailure == freezed
          ? _value.repostsOrFailure
          : repostsOrFailure as Either<PostFailure, KtList<String>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_RepostsReceived implements _RepostsReceived {
  const _$_RepostsReceived(this.repostsOrFailure, this.currentUserID)
      : assert(repostsOrFailure != null),
        assert(currentUserID != null);

  @override
  final Either<PostFailure, KtList<String>> repostsOrFailure;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.repostsReceived(repostsOrFailure: $repostsOrFailure, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepostsReceived &&
            (identical(other.repostsOrFailure, repostsOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.repostsOrFailure, repostsOrFailure)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repostsOrFailure) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$RepostsReceivedCopyWith<_RepostsReceived> get copyWith =>
      __$RepostsReceivedCopyWithImpl<_RepostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return repostsReceived(repostsOrFailure, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repostsReceived != null) {
      return repostsReceived(repostsOrFailure, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return repostsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repostsReceived != null) {
      return repostsReceived(this);
    }
    return orElse();
  }
}

abstract class _RepostsReceived implements PostActorEvent {
  const factory _RepostsReceived(
      Either<PostFailure, KtList<String>> repostsOrFailure,
      String currentUserID) = _$_RepostsReceived;

  Either<PostFailure, KtList<String>> get repostsOrFailure;
  String get currentUserID;
  _$RepostsReceivedCopyWith<_RepostsReceived> get copyWith;
}

abstract class _$CommentsReceivedCopyWith<$Res> {
  factory _$CommentsReceivedCopyWith(
          _CommentsReceived value, $Res Function(_CommentsReceived) then) =
      __$CommentsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PostFailure, KtList<Comment>> commentsOrFailure,
      String currentUserID});
}

class __$CommentsReceivedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$CommentsReceivedCopyWith<$Res> {
  __$CommentsReceivedCopyWithImpl(
      _CommentsReceived _value, $Res Function(_CommentsReceived) _then)
      : super(_value, (v) => _then(v as _CommentsReceived));

  @override
  _CommentsReceived get _value => super._value as _CommentsReceived;

  @override
  $Res call({
    Object commentsOrFailure = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_CommentsReceived(
      commentsOrFailure == freezed
          ? _value.commentsOrFailure
          : commentsOrFailure as Either<PostFailure, KtList<Comment>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_CommentsReceived implements _CommentsReceived {
  const _$_CommentsReceived(this.commentsOrFailure, this.currentUserID)
      : assert(commentsOrFailure != null),
        assert(currentUserID != null);

  @override
  final Either<PostFailure, KtList<Comment>> commentsOrFailure;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.commentsReceived(commentsOrFailure: $commentsOrFailure, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentsReceived &&
            (identical(other.commentsOrFailure, commentsOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.commentsOrFailure, commentsOrFailure)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentsOrFailure) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      __$CommentsReceivedCopyWithImpl<_CommentsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return commentsReceived(commentsOrFailure, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentsReceived != null) {
      return commentsReceived(commentsOrFailure, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return commentsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (commentsReceived != null) {
      return commentsReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentsReceived implements PostActorEvent {
  const factory _CommentsReceived(
      Either<PostFailure, KtList<Comment>> commentsOrFailure,
      String currentUserID) = _$_CommentsReceived;

  Either<PostFailure, KtList<Comment>> get commentsOrFailure;
  String get currentUserID;
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith;
}

abstract class _$BookmarksReceivedCopyWith<$Res> {
  factory _$BookmarksReceivedCopyWith(
          _BookmarksReceived value, $Res Function(_BookmarksReceived) then) =
      __$BookmarksReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PostFailure, KtList<String>> bookmarksOrFailure,
      String currentUserID});
}

class __$BookmarksReceivedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$BookmarksReceivedCopyWith<$Res> {
  __$BookmarksReceivedCopyWithImpl(
      _BookmarksReceived _value, $Res Function(_BookmarksReceived) _then)
      : super(_value, (v) => _then(v as _BookmarksReceived));

  @override
  _BookmarksReceived get _value => super._value as _BookmarksReceived;

  @override
  $Res call({
    Object bookmarksOrFailure = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_BookmarksReceived(
      bookmarksOrFailure == freezed
          ? _value.bookmarksOrFailure
          : bookmarksOrFailure as Either<PostFailure, KtList<String>>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_BookmarksReceived implements _BookmarksReceived {
  const _$_BookmarksReceived(this.bookmarksOrFailure, this.currentUserID)
      : assert(bookmarksOrFailure != null),
        assert(currentUserID != null);

  @override
  final Either<PostFailure, KtList<String>> bookmarksOrFailure;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.bookmarksReceived(bookmarksOrFailure: $bookmarksOrFailure, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarksReceived &&
            (identical(other.bookmarksOrFailure, bookmarksOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarksOrFailure, bookmarksOrFailure)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarksOrFailure) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$BookmarksReceivedCopyWith<_BookmarksReceived> get copyWith =>
      __$BookmarksReceivedCopyWithImpl<_BookmarksReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return bookmarksReceived(bookmarksOrFailure, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarksReceived != null) {
      return bookmarksReceived(bookmarksOrFailure, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return bookmarksReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookmarksReceived != null) {
      return bookmarksReceived(this);
    }
    return orElse();
  }
}

abstract class _BookmarksReceived implements PostActorEvent {
  const factory _BookmarksReceived(
      Either<PostFailure, KtList<String>> bookmarksOrFailure,
      String currentUserID) = _$_BookmarksReceived;

  Either<PostFailure, KtList<String>> get bookmarksOrFailure;
  String get currentUserID;
  _$BookmarksReceivedCopyWith<_BookmarksReceived> get copyWith;
}

abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({Post post, String currentUserID});

  $PostCopyWith<$Res> get post;
}

class __$LikedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object post = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_Liked(
      post == freezed ? _value.post : post as Post,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
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

class _$_Liked implements _Liked {
  const _$_Liked(this.post, this.currentUserID)
      : assert(post != null),
        assert(currentUserID != null);

  @override
  final Post post;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.toggleLikePost(post: $post, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleLikePost(post, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleLikePost != null) {
      return toggleLikePost(post, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleLikePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleLikePost != null) {
      return toggleLikePost(this);
    }
    return orElse();
  }
}

abstract class _Liked implements PostActorEvent {
  const factory _Liked(Post post, String currentUserID) = _$_Liked;

  Post get post;
  String get currentUserID;
  _$LikedCopyWith<_Liked> get copyWith;
}

abstract class _$RepostedCopyWith<$Res> {
  factory _$RepostedCopyWith(_Reposted value, $Res Function(_Reposted) then) =
      __$RepostedCopyWithImpl<$Res>;
  $Res call({Post post, String currentUserID});

  $PostCopyWith<$Res> get post;
}

class __$RepostedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$RepostedCopyWith<$Res> {
  __$RepostedCopyWithImpl(_Reposted _value, $Res Function(_Reposted) _then)
      : super(_value, (v) => _then(v as _Reposted));

  @override
  _Reposted get _value => super._value as _Reposted;

  @override
  $Res call({
    Object post = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_Reposted(
      post == freezed ? _value.post : post as Post,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
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

class _$_Reposted implements _Reposted {
  const _$_Reposted(this.post, this.currentUserID)
      : assert(post != null),
        assert(currentUserID != null);

  @override
  final Post post;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.toggleRepostPost(post: $post, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reposted &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$RepostedCopyWith<_Reposted> get copyWith =>
      __$RepostedCopyWithImpl<_Reposted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleRepostPost(post, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleRepostPost != null) {
      return toggleRepostPost(post, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleRepostPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleRepostPost != null) {
      return toggleRepostPost(this);
    }
    return orElse();
  }
}

abstract class _Reposted implements PostActorEvent {
  const factory _Reposted(Post post, String currentUserID) = _$_Reposted;

  Post get post;
  String get currentUserID;
  _$RepostedCopyWith<_Reposted> get copyWith;
}

abstract class _$BookmarkedCopyWith<$Res> {
  factory _$BookmarkedCopyWith(
          _Bookmarked value, $Res Function(_Bookmarked) then) =
      __$BookmarkedCopyWithImpl<$Res>;
  $Res call({Post post, String currentUserID});

  $PostCopyWith<$Res> get post;
}

class __$BookmarkedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$BookmarkedCopyWith<$Res> {
  __$BookmarkedCopyWithImpl(
      _Bookmarked _value, $Res Function(_Bookmarked) _then)
      : super(_value, (v) => _then(v as _Bookmarked));

  @override
  _Bookmarked get _value => super._value as _Bookmarked;

  @override
  $Res call({
    Object post = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_Bookmarked(
      post == freezed ? _value.post : post as Post,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
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

class _$_Bookmarked implements _Bookmarked {
  const _$_Bookmarked(this.post, this.currentUserID)
      : assert(post != null),
        assert(currentUserID != null);

  @override
  final Post post;
  @override
  final String currentUserID;

  @override
  String toString() {
    return 'PostActorEvent.toggleBookmarkPost(post: $post, currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bookmarked &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$BookmarkedCopyWith<_Bookmarked> get copyWith =>
      __$BookmarkedCopyWithImpl<_Bookmarked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleBookmarkPost(post, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleBookmarkPost != null) {
      return toggleBookmarkPost(post, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return toggleBookmarkPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleBookmarkPost != null) {
      return toggleBookmarkPost(this);
    }
    return orElse();
  }
}

abstract class _Bookmarked implements PostActorEvent {
  const factory _Bookmarked(Post post, String currentUserID) = _$_Bookmarked;

  Post get post;
  String get currentUserID;
  _$BookmarkedCopyWith<_Bookmarked> get copyWith;
}

abstract class _$SetCurrentScreenCopyWith<$Res> {
  factory _$SetCurrentScreenCopyWith(
          _SetCurrentScreen value, $Res Function(_SetCurrentScreen) then) =
      __$SetCurrentScreenCopyWithImpl<$Res>;
}

class __$SetCurrentScreenCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$SetCurrentScreenCopyWith<$Res> {
  __$SetCurrentScreenCopyWithImpl(
      _SetCurrentScreen _value, $Res Function(_SetCurrentScreen) _then)
      : super(_value, (v) => _then(v as _SetCurrentScreen));

  @override
  _SetCurrentScreen get _value => super._value as _SetCurrentScreen;
}

class _$_SetCurrentScreen implements _SetCurrentScreen {
  const _$_SetCurrentScreen();

  @override
  String toString() {
    return 'PostActorEvent.setCurrentScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetCurrentScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return setCurrentScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return setCurrentScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentScreen != null) {
      return setCurrentScreen(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentScreen implements PostActorEvent {
  const factory _SetCurrentScreen() = _$_SetCurrentScreen;
}

abstract class $GetPostCopyWith<$Res> {
  factory $GetPostCopyWith(GetPost value, $Res Function(GetPost) then) =
      _$GetPostCopyWithImpl<$Res>;
  $Res call({String postID, String type, String typeID, String currentUserID});
}

class _$GetPostCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
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
    return 'PostActorEvent.getPost(postID: $postID, type: $type, typeID: $typeID, currentUserID: $currentUserID)';
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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result getData(
            Post post, String senderID, String currentUserID, String orgID),
    @required Result openPostDetail(Post post, bool commenting),
    @required Result delete(Post post),
    @required Result commentBodyChanged(String commnentBody),
    @required Result submitComment(String currentUserID, Post post),
    @required
        Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
            String currentUserID),
    @required
        Result repostsReceived(
            Either<PostFailure, KtList<String>> repostsOrFailure,
            String currentUserID),
    @required
        Result commentsReceived(
            Either<PostFailure, KtList<Comment>> commentsOrFailure,
            String currentUserID),
    @required
        Result bookmarksReceived(
            Either<PostFailure, KtList<String>> bookmarksOrFailure,
            String currentUserID),
    @required Result toggleLikePost(Post post, String currentUserID),
    @required Result toggleRepostPost(Post post, String currentUserID),
    @required Result toggleBookmarkPost(Post post, String currentUserID),
    @required Result setCurrentScreen(),
    @required
        Result getPost(
            String postID, String type, String typeID, String currentUserID),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return getPost(postID, type, typeID, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(
        Post post, String senderID, String currentUserID, String orgID),
    Result openPostDetail(Post post, bool commenting),
    Result delete(Post post),
    Result commentBodyChanged(String commnentBody),
    Result submitComment(String currentUserID, Post post),
    Result likesReceived(Either<PostFailure, KtList<String>> likesOrFailure,
        String currentUserID),
    Result repostsReceived(Either<PostFailure, KtList<String>> repostsOrFailure,
        String currentUserID),
    Result commentsReceived(
        Either<PostFailure, KtList<Comment>> commentsOrFailure,
        String currentUserID),
    Result bookmarksReceived(
        Either<PostFailure, KtList<String>> bookmarksOrFailure,
        String currentUserID),
    Result toggleLikePost(Post post, String currentUserID),
    Result toggleRepostPost(Post post, String currentUserID),
    Result toggleBookmarkPost(Post post, String currentUserID),
    Result setCurrentScreen(),
    Result getPost(
        String postID, String type, String typeID, String currentUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(postID, type, typeID, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_GetData value),
    @required Result openPostDetail(_Opened value),
    @required Result delete(_Delete value),
    @required Result commentBodyChanged(_CommentBodyChanged value),
    @required Result submitComment(_SubmitComment value),
    @required Result likesReceived(_LikesReceived value),
    @required Result repostsReceived(_RepostsReceived value),
    @required Result commentsReceived(_CommentsReceived value),
    @required Result bookmarksReceived(_BookmarksReceived value),
    @required Result toggleLikePost(_Liked value),
    @required Result toggleRepostPost(_Reposted value),
    @required Result toggleBookmarkPost(_Bookmarked value),
    @required Result setCurrentScreen(_SetCurrentScreen value),
    @required Result getPost(GetPost value),
  }) {
    assert(getData != null);
    assert(openPostDetail != null);
    assert(delete != null);
    assert(commentBodyChanged != null);
    assert(submitComment != null);
    assert(likesReceived != null);
    assert(repostsReceived != null);
    assert(commentsReceived != null);
    assert(bookmarksReceived != null);
    assert(toggleLikePost != null);
    assert(toggleRepostPost != null);
    assert(toggleBookmarkPost != null);
    assert(setCurrentScreen != null);
    assert(getPost != null);
    return getPost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_GetData value),
    Result openPostDetail(_Opened value),
    Result delete(_Delete value),
    Result commentBodyChanged(_CommentBodyChanged value),
    Result submitComment(_SubmitComment value),
    Result likesReceived(_LikesReceived value),
    Result repostsReceived(_RepostsReceived value),
    Result commentsReceived(_CommentsReceived value),
    Result bookmarksReceived(_BookmarksReceived value),
    Result toggleLikePost(_Liked value),
    Result toggleRepostPost(_Reposted value),
    Result toggleBookmarkPost(_Bookmarked value),
    Result setCurrentScreen(_SetCurrentScreen value),
    Result getPost(GetPost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPost != null) {
      return getPost(this);
    }
    return orElse();
  }
}

abstract class GetPost implements PostActorEvent {
  const factory GetPost(
      {String postID,
      String type,
      String typeID,
      String currentUserID}) = _$GetPost;

  String get postID;
  String get type;
  String get typeID;
  String get currentUserID;
  $GetPostCopyWith<GetPost> get copyWith;
}

class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

  _PostActorState call(
      {@required Organization org,
      @required Post post,
      @required User senderUser,
      @required User reposterUser,
      @required bool isCurrentUsersPost,
      @required bool isLiked,
      @required bool isReposted,
      @required bool isBookmarked,
      @required Comment comment,
      @required KtList<String> likes,
      @required KtList<String> reposts,
      @required KtList<Comment> comments,
      @required KtList<String> bookmarkedPosts}) {
    return _PostActorState(
      org: org,
      post: post,
      senderUser: senderUser,
      reposterUser: reposterUser,
      isCurrentUsersPost: isCurrentUsersPost,
      isLiked: isLiked,
      isReposted: isReposted,
      isBookmarked: isBookmarked,
      comment: comment,
      likes: likes,
      reposts: reposts,
      comments: comments,
      bookmarkedPosts: bookmarkedPosts,
    );
  }
}

// ignore: unused_element
const $PostActorState = _$PostActorStateTearOff();

mixin _$PostActorState {
  Organization get org;
  Post get post;
  User get senderUser;
  User get reposterUser;
  bool get isCurrentUsersPost;
  bool get isLiked;
  bool get isReposted;
  bool get isBookmarked;
  Comment get comment;
  KtList<String> get likes;
  KtList<String> get reposts;
  KtList<Comment> get comments;
  KtList<String> get bookmarkedPosts;

  $PostActorStateCopyWith<PostActorState> get copyWith;
}

abstract class $PostActorStateCopyWith<$Res> {
  factory $PostActorStateCopyWith(
          PostActorState value, $Res Function(PostActorState) then) =
      _$PostActorStateCopyWithImpl<$Res>;
  $Res call(
      {Organization org,
      Post post,
      User senderUser,
      User reposterUser,
      bool isCurrentUsersPost,
      bool isLiked,
      bool isReposted,
      bool isBookmarked,
      Comment comment,
      KtList<String> likes,
      KtList<String> reposts,
      KtList<Comment> comments,
      KtList<String> bookmarkedPosts});

  $OrganizationCopyWith<$Res> get org;
  $PostCopyWith<$Res> get post;
  $UserCopyWith<$Res> get senderUser;
  $UserCopyWith<$Res> get reposterUser;
  $CommentCopyWith<$Res> get comment;
}

class _$PostActorStateCopyWithImpl<$Res>
    implements $PostActorStateCopyWith<$Res> {
  _$PostActorStateCopyWithImpl(this._value, this._then);

  final PostActorState _value;
  // ignore: unused_field
  final $Res Function(PostActorState) _then;

  @override
  $Res call({
    Object org = freezed,
    Object post = freezed,
    Object senderUser = freezed,
    Object reposterUser = freezed,
    Object isCurrentUsersPost = freezed,
    Object isLiked = freezed,
    Object isReposted = freezed,
    Object isBookmarked = freezed,
    Object comment = freezed,
    Object likes = freezed,
    Object reposts = freezed,
    Object comments = freezed,
    Object bookmarkedPosts = freezed,
  }) {
    return _then(_value.copyWith(
      org: org == freezed ? _value.org : org as Organization,
      post: post == freezed ? _value.post : post as Post,
      senderUser:
          senderUser == freezed ? _value.senderUser : senderUser as User,
      reposterUser:
          reposterUser == freezed ? _value.reposterUser : reposterUser as User,
      isCurrentUsersPost: isCurrentUsersPost == freezed
          ? _value.isCurrentUsersPost
          : isCurrentUsersPost as bool,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isReposted:
          isReposted == freezed ? _value.isReposted : isReposted as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      comment: comment == freezed ? _value.comment : comment as Comment,
      likes: likes == freezed ? _value.likes : likes as KtList<String>,
      reposts: reposts == freezed ? _value.reposts : reposts as KtList<String>,
      comments:
          comments == freezed ? _value.comments : comments as KtList<Comment>,
      bookmarkedPosts: bookmarkedPosts == freezed
          ? _value.bookmarkedPosts
          : bookmarkedPosts as KtList<String>,
    ));
  }

  @override
  $OrganizationCopyWith<$Res> get org {
    if (_value.org == null) {
      return null;
    }
    return $OrganizationCopyWith<$Res>(_value.org, (value) {
      return _then(_value.copyWith(org: value));
    });
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

  @override
  $UserCopyWith<$Res> get senderUser {
    if (_value.senderUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.senderUser, (value) {
      return _then(_value.copyWith(senderUser: value));
    });
  }

  @override
  $UserCopyWith<$Res> get reposterUser {
    if (_value.reposterUser == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.reposterUser, (value) {
      return _then(_value.copyWith(reposterUser: value));
    });
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

abstract class _$PostActorStateCopyWith<$Res>
    implements $PostActorStateCopyWith<$Res> {
  factory _$PostActorStateCopyWith(
          _PostActorState value, $Res Function(_PostActorState) then) =
      __$PostActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Organization org,
      Post post,
      User senderUser,
      User reposterUser,
      bool isCurrentUsersPost,
      bool isLiked,
      bool isReposted,
      bool isBookmarked,
      Comment comment,
      KtList<String> likes,
      KtList<String> reposts,
      KtList<Comment> comments,
      KtList<String> bookmarkedPosts});

  @override
  $OrganizationCopyWith<$Res> get org;
  @override
  $PostCopyWith<$Res> get post;
  @override
  $UserCopyWith<$Res> get senderUser;
  @override
  $UserCopyWith<$Res> get reposterUser;
  @override
  $CommentCopyWith<$Res> get comment;
}

class __$PostActorStateCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$PostActorStateCopyWith<$Res> {
  __$PostActorStateCopyWithImpl(
      _PostActorState _value, $Res Function(_PostActorState) _then)
      : super(_value, (v) => _then(v as _PostActorState));

  @override
  _PostActorState get _value => super._value as _PostActorState;

  @override
  $Res call({
    Object org = freezed,
    Object post = freezed,
    Object senderUser = freezed,
    Object reposterUser = freezed,
    Object isCurrentUsersPost = freezed,
    Object isLiked = freezed,
    Object isReposted = freezed,
    Object isBookmarked = freezed,
    Object comment = freezed,
    Object likes = freezed,
    Object reposts = freezed,
    Object comments = freezed,
    Object bookmarkedPosts = freezed,
  }) {
    return _then(_PostActorState(
      org: org == freezed ? _value.org : org as Organization,
      post: post == freezed ? _value.post : post as Post,
      senderUser:
          senderUser == freezed ? _value.senderUser : senderUser as User,
      reposterUser:
          reposterUser == freezed ? _value.reposterUser : reposterUser as User,
      isCurrentUsersPost: isCurrentUsersPost == freezed
          ? _value.isCurrentUsersPost
          : isCurrentUsersPost as bool,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
      isReposted:
          isReposted == freezed ? _value.isReposted : isReposted as bool,
      isBookmarked:
          isBookmarked == freezed ? _value.isBookmarked : isBookmarked as bool,
      comment: comment == freezed ? _value.comment : comment as Comment,
      likes: likes == freezed ? _value.likes : likes as KtList<String>,
      reposts: reposts == freezed ? _value.reposts : reposts as KtList<String>,
      comments:
          comments == freezed ? _value.comments : comments as KtList<Comment>,
      bookmarkedPosts: bookmarkedPosts == freezed
          ? _value.bookmarkedPosts
          : bookmarkedPosts as KtList<String>,
    ));
  }
}

class _$_PostActorState implements _PostActorState {
  const _$_PostActorState(
      {@required this.org,
      @required this.post,
      @required this.senderUser,
      @required this.reposterUser,
      @required this.isCurrentUsersPost,
      @required this.isLiked,
      @required this.isReposted,
      @required this.isBookmarked,
      @required this.comment,
      @required this.likes,
      @required this.reposts,
      @required this.comments,
      @required this.bookmarkedPosts})
      : assert(org != null),
        assert(post != null),
        assert(senderUser != null),
        assert(reposterUser != null),
        assert(isCurrentUsersPost != null),
        assert(isLiked != null),
        assert(isReposted != null),
        assert(isBookmarked != null),
        assert(comment != null),
        assert(likes != null),
        assert(reposts != null),
        assert(comments != null),
        assert(bookmarkedPosts != null);

  @override
  final Organization org;
  @override
  final Post post;
  @override
  final User senderUser;
  @override
  final User reposterUser;
  @override
  final bool isCurrentUsersPost;
  @override
  final bool isLiked;
  @override
  final bool isReposted;
  @override
  final bool isBookmarked;
  @override
  final Comment comment;
  @override
  final KtList<String> likes;
  @override
  final KtList<String> reposts;
  @override
  final KtList<Comment> comments;
  @override
  final KtList<String> bookmarkedPosts;

  @override
  String toString() {
    return 'PostActorState(org: $org, post: $post, senderUser: $senderUser, reposterUser: $reposterUser, isCurrentUsersPost: $isCurrentUsersPost, isLiked: $isLiked, isReposted: $isReposted, isBookmarked: $isBookmarked, comment: $comment, likes: $likes, reposts: $reposts, comments: $comments, bookmarkedPosts: $bookmarkedPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostActorState &&
            (identical(other.org, org) ||
                const DeepCollectionEquality().equals(other.org, org)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.senderUser, senderUser) ||
                const DeepCollectionEquality()
                    .equals(other.senderUser, senderUser)) &&
            (identical(other.reposterUser, reposterUser) ||
                const DeepCollectionEquality()
                    .equals(other.reposterUser, reposterUser)) &&
            (identical(other.isCurrentUsersPost, isCurrentUsersPost) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentUsersPost, isCurrentUsersPost)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLiked, isLiked)) &&
            (identical(other.isReposted, isReposted) ||
                const DeepCollectionEquality()
                    .equals(other.isReposted, isReposted)) &&
            (identical(other.isBookmarked, isBookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.isBookmarked, isBookmarked)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.reposts, reposts) ||
                const DeepCollectionEquality()
                    .equals(other.reposts, reposts)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.bookmarkedPosts, bookmarkedPosts) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarkedPosts, bookmarkedPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(org) ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(senderUser) ^
      const DeepCollectionEquality().hash(reposterUser) ^
      const DeepCollectionEquality().hash(isCurrentUsersPost) ^
      const DeepCollectionEquality().hash(isLiked) ^
      const DeepCollectionEquality().hash(isReposted) ^
      const DeepCollectionEquality().hash(isBookmarked) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(reposts) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(bookmarkedPosts);

  @override
  _$PostActorStateCopyWith<_PostActorState> get copyWith =>
      __$PostActorStateCopyWithImpl<_PostActorState>(this, _$identity);
}

abstract class _PostActorState implements PostActorState {
  const factory _PostActorState(
      {@required Organization org,
      @required Post post,
      @required User senderUser,
      @required User reposterUser,
      @required bool isCurrentUsersPost,
      @required bool isLiked,
      @required bool isReposted,
      @required bool isBookmarked,
      @required Comment comment,
      @required KtList<String> likes,
      @required KtList<String> reposts,
      @required KtList<Comment> comments,
      @required KtList<String> bookmarkedPosts}) = _$_PostActorState;

  @override
  Organization get org;
  @override
  Post get post;
  @override
  User get senderUser;
  @override
  User get reposterUser;
  @override
  bool get isCurrentUsersPost;
  @override
  bool get isLiked;
  @override
  bool get isReposted;
  @override
  bool get isBookmarked;
  @override
  Comment get comment;
  @override
  KtList<String> get likes;
  @override
  KtList<String> get reposts;
  @override
  KtList<Comment> get comments;
  @override
  KtList<String> get bookmarkedPosts;
  @override
  _$PostActorStateCopyWith<_PostActorState> get copyWith;
}
