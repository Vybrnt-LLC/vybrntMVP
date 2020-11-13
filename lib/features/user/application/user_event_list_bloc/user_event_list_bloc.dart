import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/user/domain/i_user_service.dart';

part 'user_event_list_event.dart';
part 'user_event_list_state.dart';
part 'user_event_list_bloc.freezed.dart';

@injectable
class UserEventListBloc extends Bloc<UserEventListEvent, UserEventListState> {
  final IUserService _userService;

  UserEventListBloc(this._userService) : super(UserEventListState.initial());

  StreamSubscription<Either<EventFailure, KtList<Event>>>
      _eventStreamSubscription;

  @override
  Stream<UserEventListState> mapEventToState(
    UserEventListEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const UserEventListState.loadInProgress();
        await _eventStreamSubscription?.cancel();
        _eventStreamSubscription = _userService
            .watchUserEvents(e.orgID)
            .listen((event) => add(UserEventListEvent.eventsReceived(event)));
      },
      eventsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => UserEventListState.loadFailure(f),
          (events) => UserEventListState.loadSuccess(events),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _eventStreamSubscription.cancel();
    return super.close();
  }
}
