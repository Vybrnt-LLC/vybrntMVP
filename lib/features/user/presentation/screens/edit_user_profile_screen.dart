import 'package:flutter/material.dart';

import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/edit_org_colors_tab.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/edit_user_details.dart';

class EditUserProfileScreen extends StatefulWidget {
  final User user;

  EditUserProfileScreen({this.user});
  @override
  _EditUserProfileScreenState createState() => _EditUserProfileScreenState();
}

class _EditUserProfileScreenState extends State<EditUserProfileScreen>
    with TickerProviderStateMixin {
  TabController _controller;
  ScrollController _scrollViewController;

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
    return Scaffold(
      backgroundColor: Colors.white,
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
              forceElevated: boxIsScrolled,
              bottom: TabBar(
                controller: _controller,
                tabs: [
                  Tab(icon: Icon(Icons.info), text: 'About'),
                  Tab(icon: Icon(Icons.color_lens), text: 'Colors'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
            // key: PageStorageKey<String>(widget.name),
            controller: _controller,
            children: [
              EditUserDetails(user: widget.user),
              EditUserColorsTab(user: widget.user),
            ]),
      ),
    );
  }
}
