import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:vybrnt_mvp/features/authentication/application/auth/bloc/auth_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:auto_route/auto_route.dart';

import '../../../../socicon_icons.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  static final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    bool supportsAppleSignIn = false;

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
          context.navigator.push(route.Routes.onboardingInfo);
          context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
        });
      });
    }, builder: (context, state) {
      return FormBuilder(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
              child: Image(
                height: 250,
                image: AssetImage('assets/logos/VYBrntfin-06.png'),
              ),
            ),
            const SizedBox(height: 14),
            FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                //autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value.trim())),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context)
                ])
                // (_) => context
                //     .bloc<SignInFormBloc>()
                //     .state
                //     .emailAddress
                //     .value
                //     .fold(
                //         (f) => f.maybeMap(
                //             invalidEmail: (_) => 'Invalid Email',
                //             orElse: () => null),
                //         (_) => null)
                ),
            const SizedBox(height: 14),
            FormBuilderTextField(
              name: 'password',
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
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    context
                        .bloc<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  //color: const Color(0xFFA4528A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Socicon.google,
                        color: Colors.white,
                        //size: 18.0,
                      ),
                      const SizedBox(width: 10),
                      Text('Sign Up with Google',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            ),
            const SizedBox(height: 10),
            if (supportsAppleSignIn)
              SignInWithAppleButton(
                borderRadius: const BorderRadius.all(Radius.zero),
                text: 'Sign Up with Apple',
                onPressed: () async {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithApplePressed());
                },
              )
            else
              const SizedBox.shrink(),
            const SizedBox(height: 150),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () => context.bloc<SignInFormBloc>().add(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed()),
                  child: const Text('Next')),
            )
          ],
        ),
      );
    });
  }
}
