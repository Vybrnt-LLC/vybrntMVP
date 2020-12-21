import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/organization/application/org_watcher_bloc/org_watcher_bloc.dart';

import 'organization_page_screen.dart';

class OrgScreen extends StatelessWidget {
  final String orgID;

  const OrgScreen({
    Key key,
    this.orgID,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocProvider<OrgWatcherBloc>(
      create: (context) => getIt<OrgWatcherBloc>()
        ..add(OrgWatcherEvent.getData(
            orgID: orgID, currentUserID: currentUserID)),
      child: OrganizationPageScreen(
        key: PageStorageKey(orgID),
        orgID: orgID,
      ),
    );
  }
}
