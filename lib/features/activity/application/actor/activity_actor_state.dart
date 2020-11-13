part of 'activity_actor_bloc.dart';

@freezed
abstract class ActivityActorState with _$ActivityActorState {
  const factory ActivityActorState({
    @required Event event,
    @required Post post,
  }) = _ActivityActorState;

  factory ActivityActorState.initial() => _ActivityActorState(
        event: Event.empty(),
        post: Post.empty(),
      );
}
