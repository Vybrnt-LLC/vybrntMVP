import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity.dart';
import 'package:vybrnt_mvp/features/activity/domain/activity_failure.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_activity_service.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

@injectable
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final IActivityService _activityService;

  ActivityBloc(this._activityService) : super(ActivityState.initial());
  StreamSubscription<Either<ActivityFailure, KtList<Activity>>>
      _activityStreamSubscription;

  @override
  Stream<ActivityState> mapEventToState(
    ActivityEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {
      yield const ActivityState.loadInProgress();
      await _activityStreamSubscription?.cancel();
      _activityStreamSubscription = _activityService.watchAll().listen(
          (activities) => add(ActivityEvent.activitiesReceived(activities)));
    }, activitiesReceived: (e) async* {
      yield e.failureOrPosts.fold(
        (f) => ActivityState.loadFailure(f),
        (activities) => ActivityState.loadSuccess(activities),
      );
    });
  }

  @override
  Future<void> close() async {
    await _activityStreamSubscription.cancel();
    return super.close();
  }
}
