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

part 'category_events_event.dart';
part 'category_events_state.dart';

part 'category_events_bloc.freezed.dart';

@injectable
class CategoryEventsBloc
    extends Bloc<CategoryEventsEvent, CategoryEventsState> {
  final IHomeFeedService _homeFeedService;

  CategoryEventsBloc(this._homeFeedService)
      : super(CategoryEventsState.initial());

  StreamSubscription<Either<EventFailure, KtList<Event>>>
      _eventStreamSubscription;

  @override
  Stream<CategoryEventsState> mapEventToState(
    CategoryEventsEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const CategoryEventsState.loadInProgress();
        await _eventStreamSubscription?.cancel();
        _eventStreamSubscription = _homeFeedService
            .watchCategoriesUpcomingEvents(e.documentName)
            .listen((event) => add(CategoryEventsEvent.eventsReceived(event)));
      },
      eventsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => CategoryEventsState.loadFailure(f),
          (events) => CategoryEventsState.loadSuccess(events),
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
