// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreatePostFormEventTearOff {
  const _$CreatePostFormEventTearOff();

  _Initialized initialized(String currentUserID) {
    return _Initialized(
      currentUserID,
    );
  }

  _AdminReceived adminReceived(KtList<String> admins, String currentUserID) {
    return _AdminReceived(
      admins,
      currentUserID,
    );
  }

  _IDChanged idChanged(String orgID) {
    return _IDChanged(
      orgID,
    );
  }

  _PostBodyChanged postBodyChanged(String postBody) {
    return _PostBodyChanged(
      postBody,
    );
  }

  _HeaderChanged headerChanged(String postHeader) {
    return _HeaderChanged(
      postHeader,
    );
  }

  ImageURLChanged imageURLChanged(File postImage) {
    return ImageURLChanged(
      postImage,
    );
  }

  _PostURLChanged postURLChanged(String postURL) {
    return _PostURLChanged(
      postURL,
    );
  }

  _CategoryChanged categoryChanged(String category) {
    return _CategoryChanged(
      category,
    );
  }

  _IsImageToggled toggleImage(bool isImageToggled) {
    return _IsImageToggled(
      isImageToggled,
    );
  }

  _ToggleRepostable toggleRepostable(bool repostable) {
    return _ToggleRepostable(
      repostable,
    );
  }

  _ToggleCommentable toggleCommentable(bool commentable) {
    return _ToggleCommentable(
      commentable,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $CreatePostFormEvent = _$CreatePostFormEventTearOff();

mixin _$CreatePostFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $CreatePostFormEventCopyWith<$Res> {
  factory $CreatePostFormEventCopyWith(
          CreatePostFormEvent value, $Res Function(CreatePostFormEvent) then) =
      _$CreatePostFormEventCopyWithImpl<$Res>;
}

class _$CreatePostFormEventCopyWithImpl<$Res>
    implements $CreatePostFormEventCopyWith<$Res> {
  _$CreatePostFormEventCopyWithImpl(this._value, this._then);

  final CreatePostFormEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePostFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(_Initialized(
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.currentUserID) : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.initialized(currentUserID: $currentUserID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.initialized'))
      ..add(DiagnosticsProperty('currentUserID', currentUserID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return initialized(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CreatePostFormEvent {
  const factory _Initialized(String currentUserID) = _$_Initialized;

  String get currentUserID;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$AdminReceivedCopyWith<$Res> {
  factory _$AdminReceivedCopyWith(
          _AdminReceived value, $Res Function(_AdminReceived) then) =
      __$AdminReceivedCopyWithImpl<$Res>;
  $Res call({KtList<String> admins, String currentUserID});
}

class __$AdminReceivedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$AdminReceivedCopyWith<$Res> {
  __$AdminReceivedCopyWithImpl(
      _AdminReceived _value, $Res Function(_AdminReceived) _then)
      : super(_value, (v) => _then(v as _AdminReceived));

  @override
  _AdminReceived get _value => super._value as _AdminReceived;

  @override
  $Res call({
    Object admins = freezed,
    Object currentUserID = freezed,
  }) {
    return _then(_AdminReceived(
      admins == freezed ? _value.admins : admins as KtList<String>,
      currentUserID == freezed ? _value.currentUserID : currentUserID as String,
    ));
  }
}

class _$_AdminReceived with DiagnosticableTreeMixin implements _AdminReceived {
  const _$_AdminReceived(this.admins, this.currentUserID)
      : assert(admins != null),
        assert(currentUserID != null);

  @override
  final KtList<String> admins;
  @override
  final String currentUserID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.adminReceived(admins: $admins, currentUserID: $currentUserID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.adminReceived'))
      ..add(DiagnosticsProperty('admins', admins))
      ..add(DiagnosticsProperty('currentUserID', currentUserID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminReceived &&
            (identical(other.admins, admins) ||
                const DeepCollectionEquality().equals(other.admins, admins)) &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(admins) ^
      const DeepCollectionEquality().hash(currentUserID);

  @override
  _$AdminReceivedCopyWith<_AdminReceived> get copyWith =>
      __$AdminReceivedCopyWithImpl<_AdminReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return adminReceived(admins, currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminReceived != null) {
      return adminReceived(admins, currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return adminReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (adminReceived != null) {
      return adminReceived(this);
    }
    return orElse();
  }
}

abstract class _AdminReceived implements CreatePostFormEvent {
  const factory _AdminReceived(KtList<String> admins, String currentUserID) =
      _$_AdminReceived;

  KtList<String> get admins;
  String get currentUserID;
  _$AdminReceivedCopyWith<_AdminReceived> get copyWith;
}

abstract class _$IDChangedCopyWith<$Res> {
  factory _$IDChangedCopyWith(
          _IDChanged value, $Res Function(_IDChanged) then) =
      __$IDChangedCopyWithImpl<$Res>;
  $Res call({String orgID});
}

class __$IDChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$IDChangedCopyWith<$Res> {
  __$IDChangedCopyWithImpl(_IDChanged _value, $Res Function(_IDChanged) _then)
      : super(_value, (v) => _then(v as _IDChanged));

  @override
  _IDChanged get _value => super._value as _IDChanged;

  @override
  $Res call({
    Object orgID = freezed,
  }) {
    return _then(_IDChanged(
      orgID == freezed ? _value.orgID : orgID as String,
    ));
  }
}

class _$_IDChanged with DiagnosticableTreeMixin implements _IDChanged {
  const _$_IDChanged(this.orgID) : assert(orgID != null);

  @override
  final String orgID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.idChanged(orgID: $orgID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.idChanged'))
      ..add(DiagnosticsProperty('orgID', orgID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IDChanged &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orgID);

  @override
  _$IDChangedCopyWith<_IDChanged> get copyWith =>
      __$IDChangedCopyWithImpl<_IDChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return idChanged(orgID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(orgID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return idChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idChanged != null) {
      return idChanged(this);
    }
    return orElse();
  }
}

abstract class _IDChanged implements CreatePostFormEvent {
  const factory _IDChanged(String orgID) = _$_IDChanged;

  String get orgID;
  _$IDChangedCopyWith<_IDChanged> get copyWith;
}

abstract class _$PostBodyChangedCopyWith<$Res> {
  factory _$PostBodyChangedCopyWith(
          _PostBodyChanged value, $Res Function(_PostBodyChanged) then) =
      __$PostBodyChangedCopyWithImpl<$Res>;
  $Res call({String postBody});
}

class __$PostBodyChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$PostBodyChangedCopyWith<$Res> {
  __$PostBodyChangedCopyWithImpl(
      _PostBodyChanged _value, $Res Function(_PostBodyChanged) _then)
      : super(_value, (v) => _then(v as _PostBodyChanged));

  @override
  _PostBodyChanged get _value => super._value as _PostBodyChanged;

  @override
  $Res call({
    Object postBody = freezed,
  }) {
    return _then(_PostBodyChanged(
      postBody == freezed ? _value.postBody : postBody as String,
    ));
  }
}

class _$_PostBodyChanged
    with DiagnosticableTreeMixin
    implements _PostBodyChanged {
  const _$_PostBodyChanged(this.postBody) : assert(postBody != null);

  @override
  final String postBody;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.postBodyChanged(postBody: $postBody)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.postBodyChanged'))
      ..add(DiagnosticsProperty('postBody', postBody));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostBodyChanged &&
            (identical(other.postBody, postBody) ||
                const DeepCollectionEquality()
                    .equals(other.postBody, postBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postBody);

  @override
  _$PostBodyChangedCopyWith<_PostBodyChanged> get copyWith =>
      __$PostBodyChangedCopyWithImpl<_PostBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return postBodyChanged(postBody);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postBodyChanged != null) {
      return postBodyChanged(postBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return postBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postBodyChanged != null) {
      return postBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _PostBodyChanged implements CreatePostFormEvent {
  const factory _PostBodyChanged(String postBody) = _$_PostBodyChanged;

  String get postBody;
  _$PostBodyChangedCopyWith<_PostBodyChanged> get copyWith;
}

abstract class _$HeaderChangedCopyWith<$Res> {
  factory _$HeaderChangedCopyWith(
          _HeaderChanged value, $Res Function(_HeaderChanged) then) =
      __$HeaderChangedCopyWithImpl<$Res>;
  $Res call({String postHeader});
}

class __$HeaderChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$HeaderChangedCopyWith<$Res> {
  __$HeaderChangedCopyWithImpl(
      _HeaderChanged _value, $Res Function(_HeaderChanged) _then)
      : super(_value, (v) => _then(v as _HeaderChanged));

  @override
  _HeaderChanged get _value => super._value as _HeaderChanged;

  @override
  $Res call({
    Object postHeader = freezed,
  }) {
    return _then(_HeaderChanged(
      postHeader == freezed ? _value.postHeader : postHeader as String,
    ));
  }
}

class _$_HeaderChanged with DiagnosticableTreeMixin implements _HeaderChanged {
  const _$_HeaderChanged(this.postHeader) : assert(postHeader != null);

  @override
  final String postHeader;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.headerChanged(postHeader: $postHeader)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.headerChanged'))
      ..add(DiagnosticsProperty('postHeader', postHeader));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeaderChanged &&
            (identical(other.postHeader, postHeader) ||
                const DeepCollectionEquality()
                    .equals(other.postHeader, postHeader)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postHeader);

  @override
  _$HeaderChangedCopyWith<_HeaderChanged> get copyWith =>
      __$HeaderChangedCopyWithImpl<_HeaderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return headerChanged(postHeader);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (headerChanged != null) {
      return headerChanged(postHeader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return headerChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (headerChanged != null) {
      return headerChanged(this);
    }
    return orElse();
  }
}

abstract class _HeaderChanged implements CreatePostFormEvent {
  const factory _HeaderChanged(String postHeader) = _$_HeaderChanged;

  String get postHeader;
  _$HeaderChangedCopyWith<_HeaderChanged> get copyWith;
}

abstract class $ImageURLChangedCopyWith<$Res> {
  factory $ImageURLChangedCopyWith(
          ImageURLChanged value, $Res Function(ImageURLChanged) then) =
      _$ImageURLChangedCopyWithImpl<$Res>;
  $Res call({File postImage});
}

class _$ImageURLChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements $ImageURLChangedCopyWith<$Res> {
  _$ImageURLChangedCopyWithImpl(
      ImageURLChanged _value, $Res Function(ImageURLChanged) _then)
      : super(_value, (v) => _then(v as ImageURLChanged));

  @override
  ImageURLChanged get _value => super._value as ImageURLChanged;

  @override
  $Res call({
    Object postImage = freezed,
  }) {
    return _then(ImageURLChanged(
      postImage == freezed ? _value.postImage : postImage as File,
    ));
  }
}

class _$ImageURLChanged
    with DiagnosticableTreeMixin
    implements ImageURLChanged {
  const _$ImageURLChanged(this.postImage) : assert(postImage != null);

  @override
  final File postImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.imageURLChanged(postImage: $postImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.imageURLChanged'))
      ..add(DiagnosticsProperty('postImage', postImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageURLChanged &&
            (identical(other.postImage, postImage) ||
                const DeepCollectionEquality()
                    .equals(other.postImage, postImage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postImage);

  @override
  $ImageURLChangedCopyWith<ImageURLChanged> get copyWith =>
      _$ImageURLChangedCopyWithImpl<ImageURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return imageURLChanged(postImage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageURLChanged != null) {
      return imageURLChanged(postImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return imageURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageURLChanged != null) {
      return imageURLChanged(this);
    }
    return orElse();
  }
}

abstract class ImageURLChanged implements CreatePostFormEvent {
  const factory ImageURLChanged(File postImage) = _$ImageURLChanged;

  File get postImage;
  $ImageURLChangedCopyWith<ImageURLChanged> get copyWith;
}

abstract class _$PostURLChangedCopyWith<$Res> {
  factory _$PostURLChangedCopyWith(
          _PostURLChanged value, $Res Function(_PostURLChanged) then) =
      __$PostURLChangedCopyWithImpl<$Res>;
  $Res call({String postURL});
}

class __$PostURLChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$PostURLChangedCopyWith<$Res> {
  __$PostURLChangedCopyWithImpl(
      _PostURLChanged _value, $Res Function(_PostURLChanged) _then)
      : super(_value, (v) => _then(v as _PostURLChanged));

  @override
  _PostURLChanged get _value => super._value as _PostURLChanged;

  @override
  $Res call({
    Object postURL = freezed,
  }) {
    return _then(_PostURLChanged(
      postURL == freezed ? _value.postURL : postURL as String,
    ));
  }
}

class _$_PostURLChanged
    with DiagnosticableTreeMixin
    implements _PostURLChanged {
  const _$_PostURLChanged(this.postURL) : assert(postURL != null);

  @override
  final String postURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.postURLChanged(postURL: $postURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.postURLChanged'))
      ..add(DiagnosticsProperty('postURL', postURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostURLChanged &&
            (identical(other.postURL, postURL) ||
                const DeepCollectionEquality().equals(other.postURL, postURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postURL);

  @override
  _$PostURLChangedCopyWith<_PostURLChanged> get copyWith =>
      __$PostURLChangedCopyWithImpl<_PostURLChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return postURLChanged(postURL);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postURLChanged != null) {
      return postURLChanged(postURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return postURLChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postURLChanged != null) {
      return postURLChanged(this);
    }
    return orElse();
  }
}

abstract class _PostURLChanged implements CreatePostFormEvent {
  const factory _PostURLChanged(String postURL) = _$_PostURLChanged;

  String get postURL;
  _$PostURLChangedCopyWith<_PostURLChanged> get copyWith;
}

abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String category});
}

class __$CategoryChangedCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_CategoryChanged(
      category == freezed ? _value.category : category as String,
    ));
  }
}

class _$_CategoryChanged
    with DiagnosticableTreeMixin
    implements _CategoryChanged {
  const _$_CategoryChanged(this.category) : assert(category != null);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.categoryChanged(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.categoryChanged'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements CreatePostFormEvent {
  const factory _CategoryChanged(String category) = _$_CategoryChanged;

  String get category;
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith;
}

abstract class _$IsImageToggledCopyWith<$Res> {
  factory _$IsImageToggledCopyWith(
          _IsImageToggled value, $Res Function(_IsImageToggled) then) =
      __$IsImageToggledCopyWithImpl<$Res>;
  $Res call({bool isImageToggled});
}

class __$IsImageToggledCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$IsImageToggledCopyWith<$Res> {
  __$IsImageToggledCopyWithImpl(
      _IsImageToggled _value, $Res Function(_IsImageToggled) _then)
      : super(_value, (v) => _then(v as _IsImageToggled));

  @override
  _IsImageToggled get _value => super._value as _IsImageToggled;

  @override
  $Res call({
    Object isImageToggled = freezed,
  }) {
    return _then(_IsImageToggled(
      isImageToggled == freezed
          ? _value.isImageToggled
          : isImageToggled as bool,
    ));
  }
}

class _$_IsImageToggled
    with DiagnosticableTreeMixin
    implements _IsImageToggled {
  const _$_IsImageToggled(this.isImageToggled) : assert(isImageToggled != null);

  @override
  final bool isImageToggled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.toggleImage(isImageToggled: $isImageToggled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.toggleImage'))
      ..add(DiagnosticsProperty('isImageToggled', isImageToggled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsImageToggled &&
            (identical(other.isImageToggled, isImageToggled) ||
                const DeepCollectionEquality()
                    .equals(other.isImageToggled, isImageToggled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isImageToggled);

  @override
  _$IsImageToggledCopyWith<_IsImageToggled> get copyWith =>
      __$IsImageToggledCopyWithImpl<_IsImageToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleImage(isImageToggled);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleImage != null) {
      return toggleImage(isImageToggled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleImage != null) {
      return toggleImage(this);
    }
    return orElse();
  }
}

abstract class _IsImageToggled implements CreatePostFormEvent {
  const factory _IsImageToggled(bool isImageToggled) = _$_IsImageToggled;

  bool get isImageToggled;
  _$IsImageToggledCopyWith<_IsImageToggled> get copyWith;
}

abstract class _$ToggleRepostableCopyWith<$Res> {
  factory _$ToggleRepostableCopyWith(
          _ToggleRepostable value, $Res Function(_ToggleRepostable) then) =
      __$ToggleRepostableCopyWithImpl<$Res>;
  $Res call({bool repostable});
}

class __$ToggleRepostableCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$ToggleRepostableCopyWith<$Res> {
  __$ToggleRepostableCopyWithImpl(
      _ToggleRepostable _value, $Res Function(_ToggleRepostable) _then)
      : super(_value, (v) => _then(v as _ToggleRepostable));

  @override
  _ToggleRepostable get _value => super._value as _ToggleRepostable;

  @override
  $Res call({
    Object repostable = freezed,
  }) {
    return _then(_ToggleRepostable(
      repostable == freezed ? _value.repostable : repostable as bool,
    ));
  }
}

class _$_ToggleRepostable
    with DiagnosticableTreeMixin
    implements _ToggleRepostable {
  const _$_ToggleRepostable(this.repostable) : assert(repostable != null);

  @override
  final bool repostable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.toggleRepostable(repostable: $repostable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormEvent.toggleRepostable'))
      ..add(DiagnosticsProperty('repostable', repostable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleRepostable &&
            (identical(other.repostable, repostable) ||
                const DeepCollectionEquality()
                    .equals(other.repostable, repostable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repostable);

  @override
  _$ToggleRepostableCopyWith<_ToggleRepostable> get copyWith =>
      __$ToggleRepostableCopyWithImpl<_ToggleRepostable>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleRepostable(repostable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleRepostable != null) {
      return toggleRepostable(repostable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleRepostable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleRepostable != null) {
      return toggleRepostable(this);
    }
    return orElse();
  }
}

abstract class _ToggleRepostable implements CreatePostFormEvent {
  const factory _ToggleRepostable(bool repostable) = _$_ToggleRepostable;

  bool get repostable;
  _$ToggleRepostableCopyWith<_ToggleRepostable> get copyWith;
}

abstract class _$ToggleCommentableCopyWith<$Res> {
  factory _$ToggleCommentableCopyWith(
          _ToggleCommentable value, $Res Function(_ToggleCommentable) then) =
      __$ToggleCommentableCopyWithImpl<$Res>;
  $Res call({bool commentable});
}

class __$ToggleCommentableCopyWithImpl<$Res>
    extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$ToggleCommentableCopyWith<$Res> {
  __$ToggleCommentableCopyWithImpl(
      _ToggleCommentable _value, $Res Function(_ToggleCommentable) _then)
      : super(_value, (v) => _then(v as _ToggleCommentable));

  @override
  _ToggleCommentable get _value => super._value as _ToggleCommentable;

  @override
  $Res call({
    Object commentable = freezed,
  }) {
    return _then(_ToggleCommentable(
      commentable == freezed ? _value.commentable : commentable as bool,
    ));
  }
}

class _$_ToggleCommentable
    with DiagnosticableTreeMixin
    implements _ToggleCommentable {
  const _$_ToggleCommentable(this.commentable) : assert(commentable != null);

  @override
  final bool commentable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.toggleCommentable(commentable: $commentable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CreatePostFormEvent.toggleCommentable'))
      ..add(DiagnosticsProperty('commentable', commentable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToggleCommentable &&
            (identical(other.commentable, commentable) ||
                const DeepCollectionEquality()
                    .equals(other.commentable, commentable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(commentable);

  @override
  _$ToggleCommentableCopyWith<_ToggleCommentable> get copyWith =>
      __$ToggleCommentableCopyWithImpl<_ToggleCommentable>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleCommentable(commentable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleCommentable != null) {
      return toggleCommentable(commentable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return toggleCommentable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleCommentable != null) {
      return toggleCommentable(this);
    }
    return orElse();
  }
}

abstract class _ToggleCommentable implements CreatePostFormEvent {
  const factory _ToggleCommentable(bool commentable) = _$_ToggleCommentable;

  bool get commentable;
  _$ToggleCommentableCopyWith<_ToggleCommentable> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$CreatePostFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CreatePostFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(String currentUserID),
    @required Result adminReceived(KtList<String> admins, String currentUserID),
    @required Result idChanged(String orgID),
    @required Result postBodyChanged(String postBody),
    @required Result headerChanged(String postHeader),
    @required Result imageURLChanged(File postImage),
    @required Result postURLChanged(String postURL),
    @required Result categoryChanged(String category),
    @required Result toggleImage(bool isImageToggled),
    @required Result toggleRepostable(bool repostable),
    @required Result toggleCommentable(bool commentable),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(String currentUserID),
    Result adminReceived(KtList<String> admins, String currentUserID),
    Result idChanged(String orgID),
    Result postBodyChanged(String postBody),
    Result headerChanged(String postHeader),
    Result imageURLChanged(File postImage),
    Result postURLChanged(String postURL),
    Result categoryChanged(String category),
    Result toggleImage(bool isImageToggled),
    Result toggleRepostable(bool repostable),
    Result toggleCommentable(bool commentable),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result adminReceived(_AdminReceived value),
    @required Result idChanged(_IDChanged value),
    @required Result postBodyChanged(_PostBodyChanged value),
    @required Result headerChanged(_HeaderChanged value),
    @required Result imageURLChanged(ImageURLChanged value),
    @required Result postURLChanged(_PostURLChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result toggleImage(_IsImageToggled value),
    @required Result toggleRepostable(_ToggleRepostable value),
    @required Result toggleCommentable(_ToggleCommentable value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(adminReceived != null);
    assert(idChanged != null);
    assert(postBodyChanged != null);
    assert(headerChanged != null);
    assert(imageURLChanged != null);
    assert(postURLChanged != null);
    assert(categoryChanged != null);
    assert(toggleImage != null);
    assert(toggleRepostable != null);
    assert(toggleCommentable != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result adminReceived(_AdminReceived value),
    Result idChanged(_IDChanged value),
    Result postBodyChanged(_PostBodyChanged value),
    Result headerChanged(_HeaderChanged value),
    Result imageURLChanged(ImageURLChanged value),
    Result postURLChanged(_PostURLChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result toggleImage(_IsImageToggled value),
    Result toggleRepostable(_ToggleRepostable value),
    Result toggleCommentable(_ToggleCommentable value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CreatePostFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$CreatePostFormStateTearOff {
  const _$CreatePostFormStateTearOff();

  _CreatePostFormState call(
      {@required Post post,
      @required KtList<OrgList> admins,
      @required List<String> categories,
      @required bool isImageToggled,
      @required bool showErrorMessages,
      @required bool isLoading,
      @required bool isSaving,
      @required bool isEditing,
      @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption}) {
    return _CreatePostFormState(
      post: post,
      admins: admins,
      categories: categories,
      isImageToggled: isImageToggled,
      showErrorMessages: showErrorMessages,
      isLoading: isLoading,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CreatePostFormState = _$CreatePostFormStateTearOff();

mixin _$CreatePostFormState {
  Post get post;
  KtList<OrgList> get admins;
  List<String> get categories;
  bool get isImageToggled;
  bool get showErrorMessages;
  bool get isLoading;
  bool get isSaving;
  bool get isEditing;
  Option<Either<PostFailure, Unit>> get saveFailureOrSuccessOption;

  $CreatePostFormStateCopyWith<CreatePostFormState> get copyWith;
}

abstract class $CreatePostFormStateCopyWith<$Res> {
  factory $CreatePostFormStateCopyWith(
          CreatePostFormState value, $Res Function(CreatePostFormState) then) =
      _$CreatePostFormStateCopyWithImpl<$Res>;
  $Res call(
      {Post post,
      KtList<OrgList> admins,
      List<String> categories,
      bool isImageToggled,
      bool showErrorMessages,
      bool isLoading,
      bool isSaving,
      bool isEditing,
      Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption});
}

class _$CreatePostFormStateCopyWithImpl<$Res>
    implements $CreatePostFormStateCopyWith<$Res> {
  _$CreatePostFormStateCopyWithImpl(this._value, this._then);

  final CreatePostFormState _value;
  // ignore: unused_field
  final $Res Function(CreatePostFormState) _then;

  @override
  $Res call({
    Object post = freezed,
    Object admins = freezed,
    Object categories = freezed,
    Object isImageToggled = freezed,
    Object showErrorMessages = freezed,
    Object isLoading = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as Post,
      admins: admins == freezed ? _value.admins : admins as KtList<OrgList>,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      isImageToggled: isImageToggled == freezed
          ? _value.isImageToggled
          : isImageToggled as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PostFailure, Unit>>,
    ));
  }
}

abstract class _$CreatePostFormStateCopyWith<$Res>
    implements $CreatePostFormStateCopyWith<$Res> {
  factory _$CreatePostFormStateCopyWith(_CreatePostFormState value,
          $Res Function(_CreatePostFormState) then) =
      __$CreatePostFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post post,
      KtList<OrgList> admins,
      List<String> categories,
      bool isImageToggled,
      bool showErrorMessages,
      bool isLoading,
      bool isSaving,
      bool isEditing,
      Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption});
}

class __$CreatePostFormStateCopyWithImpl<$Res>
    extends _$CreatePostFormStateCopyWithImpl<$Res>
    implements _$CreatePostFormStateCopyWith<$Res> {
  __$CreatePostFormStateCopyWithImpl(
      _CreatePostFormState _value, $Res Function(_CreatePostFormState) _then)
      : super(_value, (v) => _then(v as _CreatePostFormState));

  @override
  _CreatePostFormState get _value => super._value as _CreatePostFormState;

  @override
  $Res call({
    Object post = freezed,
    Object admins = freezed,
    Object categories = freezed,
    Object isImageToggled = freezed,
    Object showErrorMessages = freezed,
    Object isLoading = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreatePostFormState(
      post: post == freezed ? _value.post : post as Post,
      admins: admins == freezed ? _value.admins : admins as KtList<OrgList>,
      categories: categories == freezed
          ? _value.categories
          : categories as List<String>,
      isImageToggled: isImageToggled == freezed
          ? _value.isImageToggled
          : isImageToggled as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PostFailure, Unit>>,
    ));
  }
}

class _$_CreatePostFormState
    with DiagnosticableTreeMixin
    implements _CreatePostFormState {
  const _$_CreatePostFormState(
      {@required this.post,
      @required this.admins,
      @required this.categories,
      @required this.isImageToggled,
      @required this.showErrorMessages,
      @required this.isLoading,
      @required this.isSaving,
      @required this.isEditing,
      @required this.saveFailureOrSuccessOption})
      : assert(post != null),
        assert(admins != null),
        assert(categories != null),
        assert(isImageToggled != null),
        assert(showErrorMessages != null),
        assert(isLoading != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Post post;
  @override
  final KtList<OrgList> admins;
  @override
  final List<String> categories;
  @override
  final bool isImageToggled;
  @override
  final bool showErrorMessages;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostFormState(post: $post, admins: $admins, categories: $categories, isImageToggled: $isImageToggled, showErrorMessages: $showErrorMessages, isLoading: $isLoading, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostFormState'))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('admins', admins))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('isImageToggled', isImageToggled))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePostFormState &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.admins, admins) ||
                const DeepCollectionEquality().equals(other.admins, admins)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.isImageToggled, isImageToggled) ||
                const DeepCollectionEquality()
                    .equals(other.isImageToggled, isImageToggled)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(admins) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(isImageToggled) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$CreatePostFormStateCopyWith<_CreatePostFormState> get copyWith =>
      __$CreatePostFormStateCopyWithImpl<_CreatePostFormState>(
          this, _$identity);
}

abstract class _CreatePostFormState implements CreatePostFormState {
  const factory _CreatePostFormState(
          {@required
              Post post,
          @required
              KtList<OrgList> admins,
          @required
              List<String> categories,
          @required
              bool isImageToggled,
          @required
              bool showErrorMessages,
          @required
              bool isLoading,
          @required
              bool isSaving,
          @required
              bool isEditing,
          @required
              Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_CreatePostFormState;

  @override
  Post get post;
  @override
  KtList<OrgList> get admins;
  @override
  List<String> get categories;
  @override
  bool get isImageToggled;
  @override
  bool get showErrorMessages;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<PostFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$CreatePostFormStateCopyWith<_CreatePostFormState> get copyWith;
}
