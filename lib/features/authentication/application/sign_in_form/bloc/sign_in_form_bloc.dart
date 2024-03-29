import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:vybrnt_mvp/features/activity/domain/i_analytics_service.dart';
import 'package:vybrnt_mvp/features/authentication/domain/auth_failure.dart';
import 'package:vybrnt_mvp/features/authentication/domain/i_auth_facade.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  final IAnalyticsService _analyticsService;

  SignInFormBloc(this._authFacade, this._analyticsService)
      : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword, true);
    }, signInWithEmailAndPasswordPressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword, false);
    }, forgotMyPasswordPressed: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess;
      final isEmailValid = state.emailAddress.isValid();
       if (isEmailValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authFacade.forgotMyPassword(
          emailAddress: state.emailAddress);
      }
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );

    },
    
    signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        if (failureOrSuccess.isRight()) {
          if (_authFacade.isUserRegistering()) {
            await _analyticsService.logSignUp();
          } else {
            await _analyticsService.logLogin();
          }
        }
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
    }, signInWithApplePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authFacade.signInWithApple();
      if (_authFacade.isUserRegistering()) {
        await _analyticsService.logSignUp();
      } else {
        await _analyticsService.logLogin();
      }
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {@required EmailAddress emailAddress,
              @required Password password})
          forwardedCall,
      bool isRegistering) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    if (failureOrSuccess.isRight()) {
      if (isRegistering) {
        await _analyticsService.logSignUp();
      } else {
        await _analyticsService.logLogin();
      }
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
      isRegistering: isRegistering,
    );
  }
}
