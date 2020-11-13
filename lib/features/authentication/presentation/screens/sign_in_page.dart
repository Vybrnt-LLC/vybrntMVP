import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'SIGN IN',
            style: GoogleFonts.getFont('Barlow Condensed',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30),
          ),
        ),
        body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        ));
  }
}
