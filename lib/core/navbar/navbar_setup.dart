import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vybrnt_mvp/core/navbar/navbar.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator.dart';

import 'package:vybrnt_mvp/features/calendar/presentation/screens/calendar_month_screen.dart';

import 'package:vybrnt_mvp/features/search/presentation/screens/search_screen.dart';
import 'package:vybrnt_mvp/features/activity/presentation/activity_screen.dart';

import 'package:vybrnt_mvp/features/homefeed/presentation/screens/home_feed_screen.dart';

import 'package:vybrnt_mvp/features/user/presentation/screens/user_profile_screen.dart';

import '../injection.dart';
import 'application/bloc/navbar_bloc.dart';

enum TabItem1 { homefeed, calendar, search, activity, userprofile }

class NavBarSetUp extends StatefulWidget {
  //final SimpleHiddenDrawerBloc bloc;
  final String userID;
  // final String currentUserID;

  const NavBarSetUp({Key key, this.userID}) : super(key: key);

  @override
  State createState() {
    return _NavBarSetUpState();
  }
}

class _NavBarSetUpState extends State<NavBarSetUp> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageStorageBucket bucket = PageStorageBucket();
  Widget _child;
  TabItem1 currentTab;

  //_scaffoldKey.currentState.showSnackbar()

  @override
  void initState() {
    _child = const HomeFeedScreen();
    currentTab = TabItem1.homefeed;
    //final String currentUserID = Provider.of<UserData>(context).currentUserID;
    super.initState();
  }

  Map<TabItem1, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem1.homefeed: GlobalKey<NavigatorState>(),
    TabItem1.calendar: GlobalKey<NavigatorState>(),
    TabItem1.search: GlobalKey<NavigatorState>(),
    TabItem1.activity: GlobalKey<NavigatorState>(),
    TabItem1.userprofile: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[currentTab].currentState.maybePop(),
      child: BlocBuilder<NavbarBloc, NavbarState>(
        builder: (context, state) {
          return Scaffold(
            key: _scaffoldKey,
            //resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            //extendBody: true,
            //body: TabNavigator(child: _child, navigatorKey: navigatorKey,),
            //body:_child,
            body: Stack(children: <Widget>[
              _buildOffstageNavigator(TabItem1.homefeed),
              _buildOffstageNavigator(TabItem1.calendar),
              _buildOffstageNavigator(TabItem1.search),
              _buildOffstageNavigator(TabItem1.activity),
              _buildOffstageNavigator(TabItem1.userprofile),
            ]),
            bottomNavigationBar: //new Theme(

                NavBar(onChange: _handleNavigationChange),
          );
        },
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomeFeedScreen();
          currentTab = TabItem1.homefeed;

          break;
        case 1:
          _child = CalendarMonthScreen();
          currentTab = TabItem1.calendar;

          break;
        case 2:
          _child = SearchScreen(); //OrganizationListScreen();
          currentTab = TabItem1.search;

          break;
        case 3:
          _child = ActivityScreen(); //MessagingScreen();
          currentTab = TabItem1.activity;

          break;
        case 4:
          _child = UserProfileScreen();
          currentTab = TabItem1.userprofile;

          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );

      context.bloc<NavbarBloc>().add(NavbarEvent.setCurrentScreen(index));
    });
  }

  Widget _buildOffstageNavigator(TabItem1 tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        child: _child,
        tabItemm: tabItem,
        //bloc: widget.bloc,
        //currentUserID: widget.currentUserID,
      ),
    );
  }
}
