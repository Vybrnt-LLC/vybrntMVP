import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

import 'package:vybrnt_mvp/features/organization/application/bloc/org_bloc.dart';

import 'package:vybrnt_mvp/features/organization/application/org_watcher_bloc/org_watcher_bloc.dart';

import 'package:vybrnt_mvp/features/organization/presentation/widgets/build_org.dart';

class OrganizationPageScreen extends StatefulWidget {
  final String orgID;

  const OrganizationPageScreen({
    Key key,
    this.orgID,
  }) : super(key: key);

  @override
  _OrganizationPageScreenState createState() => _OrganizationPageScreenState();
}

class _OrganizationPageScreenState extends State<OrganizationPageScreen>
    with TickerProviderStateMixin {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocBuilder<OrgWatcherBloc, OrgWatcherState>(
          builder: (BuildContext context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (state) {
              return CircularProgressIndicator();
            },
            loadSuccess: (state) {
              return BlocProvider<OrgBloc>(
                create: (context) => getIt<OrgBloc>()
                  ..add(OrgEvent.getData(
                      orgID: state.org.orgID.getOrCrash(),
                      currentUserID: currentUserID)),
                child: BuildOrg(
                  org: state.org,
                ),
              );
            });
      }),
    );
  }

  // runs during the switching tabs animation

}
