import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';

import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_colors_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_details.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_eboard_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_org_faq_tab.dart';

class EditOrganizationPageScreen extends StatefulWidget {
  final Organization org;
  final String name;

  EditOrganizationPageScreen({this.org, this.name});
  @override
  _EditOrganizationPageScreenState createState() =>
      _EditOrganizationPageScreenState();
}

class _EditOrganizationPageScreenState extends State<EditOrganizationPageScreen>
    with TickerProviderStateMixin {
  TabController _controller;
  ScrollController _scrollViewController;
  final snackBar = SnackBar(content: Text('Submitted!'));

  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 4);
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
    return DefaultTabController(
      length: 4,
      child: BlocBuilder<EditOrgBloc, EditOrgState>(builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   bottom: TabBar(
          //     controller: _controller,
          //     tabs: [
          //       Tab(icon: Icon(Icons.person), text: 'About'),
          //       Tab(icon: Icon(Icons.group), text: 'Colors'),
          //       Tab(icon: Icon(Icons.person), text: 'Eboard'),
          //       Tab(icon: Icon(Icons.group), text: 'FAQ'),
          //     ],
          //   ),
          //   backgroundColor: Colors.black,
          //   centerTitle: true,
          //   title: Text(
          //     'Edit Profile',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          body: NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  centerTitle: true,
                  backgroundColor: Colors.black,
                  title: Text('Edit Profile'),
                  pinned: true,
                  floating: true,
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          context
                              .bloc<EditOrgBloc>()
                              .add(EditOrgEvent.saveOrg());
                          Scaffold.of(context).showSnackBar(snackBar);
                        }),
                  ],
                  forceElevated: boxIsScrolled,
                  bottom: TabBar(
                    controller: _controller,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: 'About'),
                      Tab(icon: Icon(Icons.color_lens), text: 'Colors'),
                      Tab(icon: Icon(Icons.group_work), text: 'Admin'),
                      Tab(icon: Icon(Icons.question_answer), text: 'FAQ'),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
                // key: PageStorageKey<String>(widget.name),
                controller: _controller,
                children: [
                  EditOrgDetails(
                      key: PageStorageKey('orgDetails'),
                      state: state,
                      org: widget.org),
                  EditOrgColorsTab(
                      key: PageStorageKey('orgColors'), state: state),
                  BlocProvider<EditOrgBloc>(
                      create: (context) => getIt<EditOrgBloc>()
                        ..add(EditOrgEvent.getSearch(''))
                        ..add(EditOrgEvent.getData(state.org)),
                      child: EditOrgEboardTab(
                          key: PageStorageKey('orgEboard'), state: state)),
                  EditOrgFAQTab(key: PageStorageKey('orgFAQ'), state: state),
                ]),
          ),
        );
      }),
    );
  }
}
