import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';

part 'activity_actor_event.dart';
part 'activity_actor_state.dart';
part 'activity_actor_bloc.freezed.dart';

@injectable
class ActivityActorBloc extends Bloc<ActivityActorEvent, ActivityActorState> {
  final IActivityService _activityService;

  ActivityActorBloc(this._activityService)
      : super(ActivityActorState.initial());

  @override
  Stream<ActivityActorState> mapEventToState(
    ActivityActorEvent event,
  ) async* {
    yield* event.map(
        getData: (e) async* {
          Event event = Event.empty();
          Post post = Post.empty();
          if (e.activity.eventID.isNotEmpty) {
            event = await _activityService.getEvent(e.activity);
          } else if (e.activity.postID.isNotEmpty) {
            post = await _activityService.getPost(e.activity);
          }
          yield state.copyWith(
            post: post,
            event: event,
          );
        },
        getData1: (e) async* {});
  }
}
