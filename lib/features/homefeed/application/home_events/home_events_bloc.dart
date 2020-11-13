import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/calendar/domain/event_failure.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/i_homefeed_service.dart';

part 'home_events_event.dart';
part 'home_events_state.dart';

part 'home_events_bloc.freezed.dart';

@injectable
class HomeEventsBloc extends Bloc<HomeEventsEvent, HomeEventsState> {
  final IHomeFeedService _homeFeedService;

  HomeEventsBloc(this._homeFeedService) : super(HomeEventsState.initial());

  StreamSubscription<Either<EventFailure, KtList<Event>>>
      _eventStreamSubscription;

  @override
  Stream<HomeEventsState> mapEventToState(
    HomeEventsEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const HomeEventsState.loadInProgress();
        await _eventStreamSubscription?.cancel();
        _eventStreamSubscription = _homeFeedService
            .watchUpcomingEvents()
            .listen((event) => add(HomeEventsEvent.eventsReceived(event)));
      },
      eventsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => HomeEventsState.loadFailure(f),
          (events) => HomeEventsState.loadSuccess(events),
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
