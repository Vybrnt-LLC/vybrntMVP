import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/application/onboarding_info/onboarding_info_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/info_form.dart';

class OnboardingInfoScreen extends StatelessWidget {
  final FirebaseFirestore firestore;

  const OnboardingInfoScreen({Key key, this.firestore}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firestore.currentUserID(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          Provider.of<UserData>(context).currentUserID =
              snapshot.data.toString();

          return BlocProvider<OnboardingInfoBloc>(
            create: (context) => getIt<OnboardingInfoBloc>()
              ..add(OnboardingInfoEvent.started(snapshot.data.toString())),
            child: InfoForm(),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
