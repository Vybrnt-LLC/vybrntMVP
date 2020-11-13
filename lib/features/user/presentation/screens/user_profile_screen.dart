import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';

import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

import 'package:vybrnt_mvp/features/user/application/bloc/user_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/build_user.dart';

class UserProfileScreen extends StatefulWidget {
  final String userID;
  final bool menuButton;

  UserProfileScreen({
    Key key,
    this.userID,
    this.menuButton = false,
  }) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;

    return BlocBuilder<UserWatcherBloc, UserWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadFailure: (state) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(child: CircularProgressIndicator()),
            );
          },
          loadSuccess: (state) {
            return BlocProvider<UserBloc>(
                create: (context) => getIt<UserBloc>()
                  ..add(UserEvent.getData(
                      userID: state.user.userID.getOrCrash(),
                      currentUserID: currentUserID)),
                child: BuildUser(
                  menuButton: widget.menuButton,
                  user: state.user,
                ));
          });
    });
  }
}
