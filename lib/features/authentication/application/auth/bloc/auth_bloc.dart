import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/core/routes/i_dynamic_link_serivce.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_push_notification.dart';
import 'package:vybrnt_mvp/features/authentication/domain/i_auth_facade.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_auth.dart';
import 'package:vybrnt_mvp/core/routes/i_navigation_service.dart';
part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IPushNotificationService _pushNotificationService;
  final IAnalyticsService _analyticsService;
  final INavigationService _navigationService;
  final IDynamicLinkService _dynamicLinkService;

  AuthBloc(this._authFacade, this._pushNotificationService,
      this._analyticsService, this._navigationService, this._dynamicLinkService)
      : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final userOption = await _authFacade.getSignedInUser();

      yield userOption.fold(() => const AuthState.unauthenticated(), (user) {
        return AuthState.authenticated(user);
      });
    }, signedOut: (e) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    }, initializePushNotifications: (e) async* {
      await _dynamicLinkService.handleDynamicLinks(e.env);
      await _pushNotificationService.initialize();
    }, setAnalyticsUserID: (e) async* {
      await _analyticsService.setUserProperties(userID: e.currentUserID);
    }, navigateTo: (e) async* {
      await _navigationService.navigateTo(e.routeName, arguments: e.arguments);
    }, updateCounter: (e) async* {
      await _authFacade.updateCounter(currentuserID: e.currentUserID);
    }, dontShowAgain: (e) async* {
      await _authFacade.dontShowAgain(currentuserID: e.currentUserID);
    });
  }
}
