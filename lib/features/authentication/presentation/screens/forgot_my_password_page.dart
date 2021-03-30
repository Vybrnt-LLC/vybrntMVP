import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/sign_in_form.dart';
import 'package:vybrnt_mvp/socicon_icons.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';


class ForgotMyPasswordPage extends StatelessWidget {
  @override

    Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
       child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(() {}, (either) {
        either.fold((failure) {
          FlushbarHelper.createError(
              message: failure.map(
            serverError: (_) => 'Server error'
          )).show(context);
        }, (_) {
            context.navigator.pop();
          } 
        );
      });
    }, builder: (context, state) {
        return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'FORGOT YOUR PASSWORD?',
            style: GoogleFonts.getFont('Barlow Condensed',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30),
          ),
        ),
        body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
              child: const Image(
                height: 350,
                image: AssetImage('assets/logo_clear.png'),
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
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 40.0, 12.0, 0),
                      child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                            .forgotMyPasswordPressed());
                        context.navigator.push(route.Routes.signInPage);
                      },
                      child: const Text('SEND EMAIL'))
                    ),
                  ),
                  
              
            ],
          ),
        ],
        ));
  })
  );}
}