import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:vybrnt_mvp/features/authentication/application/auth/bloc/auth_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:vybrnt_mvp/socicon_icons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);
  void _launchTerms() => launch('https://www.vybrntapp.com/terms-of-use');
  void _launchPrivacy() => launch('https://www.vybrntapp.com/privacy-policy');

  @override
  Widget build(BuildContext context) {
    bool supportsAppleSignIn = false;
    final TapGestureRecognizer onTapTerms = TapGestureRecognizer()
      ..onTap = _launchTerms;
    final TapGestureRecognizer onTapPrivacy = TapGestureRecognizer()
      ..onTap = _launchPrivacy;

    if (Platform.isIOS) {
      supportsAppleSignIn = true;
    }
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(() {}, (either) {
        either.fold((failure) {
          FlushbarHelper.createError(
              message: failure.map(
            cancelledByUser: (_) => 'Cancelled',
            serverError: (_) => 'Server error',
            emailAlreadyInUse: (_) => 'Email already in use',
            invalidEmailAndPasswordCombination: (_) =>
                'Invalid email and password combination',
          )).show(context);
        }, (_) {
          if (!state.isRegistering) {
            //ExtendedNavigator.of(context);
            context.navigator.push(route.Routes.wrapper2);
          } else {
            //ExtendedNavigator.of(context);
            context.navigator.push(route.Routes.wrapper2);
          }
          context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
        });
      });
    }, builder: (context, state) {
      return Form(
        //autovalidate: state.showErrorMessages,
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: ListView(
          children: <Widget>[
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
                child: Image(
                  height: 300,
                  image: AssetImage('assets/logos/VYBrntfin-07.png'),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value.trim())),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null),
                        (_) => null)),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => context
                  .bloc<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) => context
                  .bloc<SignInFormBloc>()
                  .state
                  .password
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          shortPassword: (_) => 'Short Password',
                          orElse: () => null),
                      (_) => null),
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        },
                        child: const Text('SIGN IN'))),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed());
                        },
                        child: const Text('REGISTER'))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                  //height: 300,
                  width: 50,
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(color: Colors.grey),
                          children: [
                        const TextSpan(
                            text:
                                'By tapping Register, you are agreeing to the '),
                        TextSpan(
                            text: 'Terms of Use',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: onTapTerms),
                        const TextSpan(text: ' and you are acknowledging the '),
                        TextSpan(
                          text: 'Privacy Policy',
                          recognizer: onTapPrivacy,
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ]))),
            ),
            FlatButton(
                onPressed: () {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Socicon.google,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    SizedBox(width: 5),
                    Text('Sign in with Google',
                        style: TextStyle(
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            fontSize: 19.0)),
                  ],
                )),
            const SizedBox(height: 10),
            if (supportsAppleSignIn)
              SignInWithAppleButton(
                borderRadius: const BorderRadius.all(Radius.zero),
                //text: 'SIGN IN WITH APPLE',
                onPressed: () async {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithApplePressed());
                },
              )
            else
              const SizedBox.shrink()
          ],
        ),
      );
    });
  }
}
