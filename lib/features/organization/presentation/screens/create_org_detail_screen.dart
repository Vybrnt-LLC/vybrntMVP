import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/auth/value_objects.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_colors_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_details.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_eboard_tab.dart';

class CreateOrganizationPageDetailScreen extends StatefulWidget {
  final Organization org;
  final String name;

  const CreateOrganizationPageDetailScreen({this.org, this.name});
  @override
  _CreateOrganizationPageDetailScreenState createState() =>
      _CreateOrganizationPageDetailScreenState();
}

class _CreateOrganizationPageDetailScreenState
    extends State<CreateOrganizationPageDetailScreen>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<CreateOrganizationPageDetailScreen> {
  TabController _controller;
  ScrollController _scrollViewController;
  final snackBar =
      const SnackBar(content: Text('Your new community has been created!'));

  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final currentUserID = Provider.of<UserData>(context)
        .currentUserID; //needed for  automatic mixin keep alive
    return BlocBuilder<EditOrgBloc, EditOrgState>(builder: (context, state) {
      context.bloc<EditOrgBloc>().add(EditOrgEvent.eMemberSelected(
          UniqueId.fromUniqueString(currentUserID)));
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // leading: IconButton(
                //     icon: Icon(Icons.menu),
                //     onPressed: () {
                //       SimpleHiddenDrawerProvider.of(context).toggle();
                //     }),
                centerTitle: true,
                backgroundColor: Colors.black,
                title: const Text('Create An Organization Page'),
                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
                actions: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.check),
                      onPressed: () {
                        context
                            .bloc<EditOrgBloc>()
                            .add(EditOrgEvent.createOrg(currentUserID));
                        // Scaffold.of(context).showSnackBar(snackBar);
                      }),
                ],
              ),
            ];
          },
          body: EditOrgDetails(
            key: const PageStorageKey('orgCreateEboard'),
            org: widget.org,
            state: state,
            createOrEdit: "Create",
          ),
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
