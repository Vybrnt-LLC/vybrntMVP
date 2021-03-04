import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/navbar/navbar_setup.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/report/report_page.dart';
import 'package:vybrnt_mvp/features/activity/application/bloc/activity_bloc.dart';
import 'package:vybrnt_mvp/features/activity/repository/analytics_service.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/bloc/calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/org_bloc/org_calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/calendar_month_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_screen.dart';
import 'package:vybrnt_mvp/features/organization/application/org_watcher_bloc/org_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_organization_page_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/user_list_screen.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_screen.dart';
import 'package:vybrnt_mvp/features/search/application/bloc/search_bloc.dart';
import 'package:vybrnt_mvp/features/search/presentation/screens/search_screen.dart';
import 'package:vybrnt_mvp/features/user/application/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/activity/presentation/activity_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/edit_user_profile_screen.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/screens/home_feed_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/org_list_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/user_profile_screen.dart';
import '../injection.dart';

class TabNavigatorRoutes {
  // This is a separate class that only creates string names of the screens.
  // When making a new page, first thing is to make a route name
  static const String root = '/';
  static const String userProfile = '/userProfile';
  static const String editUserProfile = '/editUserProfile';
  static const String orgPage = '/orgPage';
  static const String editOrgPage = '/editOrgPage';
  static const String userList = 'userList';
  static const String followingList = 'followingList';
  static const String followerList = 'followerList';
  static const String orgList = 'orgList';
  static const String likes = 'likes';
  static const String reposts = 'reposts';
  static const String eventDetail = 'eventDetail';
  static const String postDetail = 'postDetail';
  static const String report = 'report';
}

class TabNavigator extends StatelessWidget with ChangeNotifier {
  final GlobalKey<NavigatorState> navigatorKey;
  //final TabItem tabItem;
  final TabItem1 tabItemm;
  final Widget child;
  final int position;
  final User user;
  final Key homeKey = const PageStorageKey('homeKey');
  final Key calendarKey = const PageStorageKey('calendarKey');
  final Key searchKey = const PageStorageKey('searchKey');
  final Key notificationKey = const PageStorageKey('notificationKey');
  final Key userKey = const PageStorageKey('userKey');

  TabNavigator(
      {Key key,
      this.navigatorKey,
      this.tabItemm,
      this.position,
      this.user,
      this.child})
      : super(key: key);

  //final String currentUserID;

  void pushUserList(BuildContext context, {KtList<String> userIDList}) {
    final routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.userList),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.userList](context)));
  }

  void pushReport(
    BuildContext context, {
    String contentID,
    String contentType,
    String ownerID,
    String ownerType,
    String currentUserID,
  }) {
    final routeBuilders = _routeBuilders(
      context,
      contentID: contentID,
      contentType: contentType,
      ownerID: ownerID,
      ownerType: ownerType,
      userID: currentUserID,
    );

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.report),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.report](context)));
  }

  void pushLikesList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    final routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.likes),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.likes](context)));
  }

  void pushRepostList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    final routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.reposts),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.reposts](context)));
  }

  void pushFollowersList(BuildContext context, {KtList<String> userIDList}) {
    final routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings:
                const RouteSettings(name: TabNavigatorRoutes.followerList),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.followerList](context)));
  }

  void pushFollowingList(BuildContext context, {KtList<String> userIDList}) {
    final routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings:
                const RouteSettings(name: TabNavigatorRoutes.followingList),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.followingList](context)));
  }

  void pushOrgList(BuildContext context, {KtList<String> orgIDList}) {
    final routeBuilders = _routeBuilders(context, orgIDList: orgIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.orgList),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.orgList](context)));
  }

  void pushOrgPage(BuildContext context, {String orgID}) {
    final routeBuilders = _routeBuilders(context, orgID: orgID);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.orgPage),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.orgPage](context)));
  }

  void pushUserProfile(BuildContext context,
      {String userID, String currentUserID}) {
    final routeBuilders =
        _routeBuilders(context, userID: userID, currentUserID: currentUserID);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.userProfile),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.userProfile](context)));
  }

  void pushEditUserProfile(BuildContext context, {User user}) {
    final routeBuilders = _routeBuilders(context, user: user);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings:
                const RouteSettings(name: TabNavigatorRoutes.editUserProfile),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.editUserProfile](context)));
  }

  void pushEditOrgPage(BuildContext context, {Organization org}) {
    final routeBuilders = _routeBuilders(context, org: org);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: RouteSettings(name: TabNavigatorRoutes.editOrgPage),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.editOrgPage](context)));
  }

  void pushPostDetail(BuildContext context, {Post post}) {
    final routeBuilders = _routeBuilders(context, post: post);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.postDetail),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.postDetail](context)));
  }

  void pushPost(BuildContext context,
      {String postID, String typeID, String type}) {
    final routeBuilders =
        _routeBuilders(context, postID: postID, typeID: typeID, type: type);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.postDetail),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.postDetail](context)));
  }

  void pushEvent(BuildContext context,
      {String eventID, String typeID, String type}) {
    final routeBuilders =
        _routeBuilders(context, eventID: eventID, typeID: typeID, type: type);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.eventDetail),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.eventDetail](context)));
  }

  void pushEventDetail(BuildContext context, {Event event}) {
    final routeBuilders = _routeBuilders(context, event: event);

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: const RouteSettings(name: TabNavigatorRoutes.eventDetail),
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.eventDetail](context)));
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {User user,
      String type,
      String eventID,
      String typeID,
      String postID,
      String contentID,
      String contentType,
      String ownerID,
      String ownerType,
      String orgID,
      String userID,
      String currentUserID,
      Organization org,
      Event event,
      Post post,
      KtList<String> userIDList,
      KtList<String> orgIDList}) {
    final currentUserID =
        Provider.of<UserData>(context, listen: false).currentUserID;
    Map<String, WidgetBuilder> routeHomeWidgets,
        routeCalendarWidgets,
        routeSearchWidgets,
        routeActivityWidgets,
        routeUserWidgets;

    routeHomeWidgets = routeCalendarWidgets =
        routeSearchWidgets = routeActivityWidgets = routeUserWidgets = {
      // TabNavigatorRoutes.root: (context) => HomeFeedScreen(
      //       key: homeKey,
      //       currentUserID: currentUserID,
      //     ),
      TabNavigatorRoutes.userProfile: (context) =>
          BlocProvider<UserWatcherBloc>(
            create: (context) => getIt<UserWatcherBloc>()
              ..add(UserWatcherEvent.getData(
                  currentUserID: currentUserID, userID: userID)),
            child: UserProfileScreen(
              key: PageStorageKey(userID),
              userID: userID,
            ),
          ),
      TabNavigatorRoutes.editUserProfile: (context) =>
          EditUserProfileScreen(user: user),
      TabNavigatorRoutes.followingList: (context) =>
          UserListScreen(userIDList: userIDList, title: 'Following'),
      TabNavigatorRoutes.followerList: (context) =>
          UserListScreen(userIDList: userIDList, title: 'Followers'),
      TabNavigatorRoutes.orgList: (context) => OrgListScreen(
            orgIDList: orgIDList,
          ),
      TabNavigatorRoutes.orgPage: (context) => BlocProvider<OrgWatcherBloc>(
            create: (context) => getIt<OrgWatcherBloc>()
              ..add(OrgWatcherEvent.getData(
                  orgID: orgID, currentUserID: currentUserID)),
            child: OrganizationPageScreen(
              key: PageStorageKey(orgID),
              orgID: orgID,
            ),
          ),
      TabNavigatorRoutes.editOrgPage: (context) =>
          EditOrganizationPageScreen(org: org),
      TabNavigatorRoutes.userList: (context) =>
          UserListScreen(userIDList: userIDList, title: 'Members'),
      TabNavigatorRoutes.likes: (context) =>
          UserListScreen(userIDList: userIDList, title: 'Likes'),
      TabNavigatorRoutes.reposts: (context) =>
          UserListScreen(userIDList: userIDList, title: 'Reposts'),
      TabNavigatorRoutes.report: (context) => ReportScreen(
            contentID: contentID,
            contentType: contentType,
            ownerID: ownerID,
            ownerType: ownerType,
            currentUserID: userID,
          ),
      TabNavigatorRoutes.postDetail: (context) => PostScreen(
            postID: postID,
            typeID: typeID,
            type: type,
          ),
      TabNavigatorRoutes.eventDetail: (context) =>
          EventScreen(eventID: eventID, typeID: typeID, type: type)
    };

    final homeRoot = {
      TabNavigatorRoutes.root: (context) => HomeFeedScreen(
            key: homeKey,
            currentUserID: currentUserID,
          )
    };

    final calendarRoot = {
      TabNavigatorRoutes.root: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<OrgCalendarBloc>(
                create: (context) => getIt<OrgCalendarBloc>()
                  ..add(OrgCalendarEvent.getData(currentUserID)),
              ),
              BlocProvider<CalendarBloc>(
                create: (context) => getIt<CalendarBloc>()
                  ..add(CalendarEvent.getData(currentUserID)),
              ),
            ],
            child: CalendarMonthScreen(key: calendarKey),
          ),
    };

    final searchRoot = {
      TabNavigatorRoutes.root: (context) => BlocProvider<SearchBloc>(
          create: (context) =>
              getIt<SearchBloc>()..add(const SearchEvent.getSearch('')),
          child: SearchScreen(key: searchKey)),
    };

    final activityRoot = {
      TabNavigatorRoutes.root: (BuildContext context) =>
          BlocProvider<ActivityBloc>(
            create: (context) =>
                getIt<ActivityBloc>()..add(const ActivityEvent.getData()),
            child: ActivityScreen(
              key: notificationKey,
              currentUserID:
                  Provider.of<UserData>(context, listen: false).currentUserID,
            ),
          ),
    };
    final userRoot = {
      TabNavigatorRoutes.root: (BuildContext context) =>
          BlocProvider<UserWatcherBloc>(
            create: (context) => getIt<UserWatcherBloc>()
              ..add(UserWatcherEvent.getData(
                  currentUserID: currentUserID, userID: currentUserID)),
            child: UserProfileScreen(
              key: userKey,
              menuButton: true,
              userID:
                  Provider.of<UserData>(context, listen: false).currentUserID,
            ),
          )
    };
    switch (tabItemm) {
      case TabItem1.homefeed:
        routeHomeWidgets.addAll(homeRoot);
        return routeHomeWidgets;

      case TabItem1.calendar:
        routeCalendarWidgets.addAll(calendarRoot);
        return routeCalendarWidgets;

      case TabItem1.userprofile:
        routeUserWidgets.addAll(userRoot);
        return routeUserWidgets;

      case TabItem1.search:
        routeSearchWidgets.addAll(searchRoot);
        return routeSearchWidgets;
      case TabItem1.activity:
        routeActivityWidgets.addAll(activityRoot);
        return routeActivityWidgets;

      default:
        routeHomeWidgets.addAll(homeRoot);
        return routeHomeWidgets;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    final routeBuilders =
        _routeBuilders(context, currentUserID: currentUserID, user: user);

    return TabNavigatorProvider(
      tabNavigator: this,
      child: Navigator(
          observers: [
            HeroController(),
            getIt<AnalyticsService>()
                .getAnalyticsObserver(), // this could has caused the hero issue
          ],
          key: navigatorKey,
          initialRoute: TabNavigatorRoutes.root,
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(
                settings: RouteSettings(name: routeSettings.name),
                builder: (context) =>
                    routeBuilders[routeSettings.name](context));
          }),
    );
  }
}
