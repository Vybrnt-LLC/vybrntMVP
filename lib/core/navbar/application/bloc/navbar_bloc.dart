import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/features/activity/repository/analytics_service.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';
part 'navbar_bloc.freezed.dart';

@injectable
class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  final AnalyticsService _analyticsService;
  NavbarBloc(this._analyticsService) : super(_Initial());

  @override
  Stream<NavbarState> mapEventToState(
    NavbarEvent event,
  ) async* {
    yield* event.map(setCurrentScreen: (e) async* {
      String screenName;
      switch (e.index) {
        case 0:
          {
            screenName = 'homeScreen';
          }
          break;
        case 1:
          {
            screenName = 'calendarScreen';
          }
          break;
        case 2:
          {
            screenName = 'searchScreen';
          }
          break;
        case 3:
          {
            screenName = 'activityScreen';
          }
          break;
        case 4:
          {
            screenName = 'currentUserProfileScreen';
          }
          break;
      }
      await _analyticsService.setCurrentScreen(screenName);
    }, initialize: (e) async* {
      await _analyticsService.setCurrentScreen('homeScreen');
    });
  }
}
