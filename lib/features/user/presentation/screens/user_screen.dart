import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/user/application/user_watcher_bloc/user_watcher_bloc.dart';

import 'user_profile_screen.dart';

class UserScreen extends StatelessWidget {
  final String userID;

  const UserScreen({
    Key key,
    this.userID,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocProvider<UserWatcherBloc>(
      create: (context) => getIt<UserWatcherBloc>()
        ..add(UserWatcherEvent.getData(
            currentUserID: currentUserID, userID: userID)),
      child: UserProfileScreen(
        key: PageStorageKey(userID),
        userID: userID,
      ),
    );
  }
}
