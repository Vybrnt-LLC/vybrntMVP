import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/register_form.dart';

class OnboardingAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(color: Colors.white, child: Column());
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: RegisterForm(),
    ));
    //});
  }
}
