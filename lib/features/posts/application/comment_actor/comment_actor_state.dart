part of 'comment_actor_bloc.dart';

@freezed
abstract class CommentActorState with _$CommentActorState {
  const factory CommentActorState(
    User senderUser,
  ) = _CommentActorState;

  factory CommentActorState.inital() => _CommentActorState(
        User.empty(),
      );
}
