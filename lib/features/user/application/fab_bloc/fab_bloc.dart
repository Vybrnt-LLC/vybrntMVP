import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';

part 'fab_event.dart';
part 'fab_state.dart';
part 'fab_bloc.freezed.dart';

@injectable
class FabBloc extends Bloc<FabEvent, FabState> {
  final IAnalyticsService _analyticsService;
  FabBloc(this._analyticsService) : super(_Initial());

  @override
  Stream<FabState> mapEventToState(
    FabEvent event,
  ) async* {
    yield* event.map(
        setCurrentScreen: (e) async* {
          await _analyticsService.setCurrentScreen(e.screenName);
        },
        started: (e) async* {});
  }
}
