import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/navbar/navbar_setup.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/report/report_page.dart';
import 'package:vybrnt_mvp/core/swipe_menu/widgets/simple_hidden_drawer_bloc.dart';
import 'package:vybrnt_mvp/features/activity/application/bloc/activity_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/bloc/calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/application/org_bloc/org_calendar_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/event.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/calendar_month_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/application/org_watcher_bloc/org_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/organization/application/user_list_bloc/user_list_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_organization_page_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/user_list_screen.dart';
import 'package:vybrnt_mvp/features/posts/application/post_actor/post_actor_bloc.dart';
import 'package:vybrnt_mvp/features/posts/domain/posts/post.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_detail_screen.dart';
import 'package:vybrnt_mvp/features/search/application/bloc/search_bloc.dart';
import 'package:vybrnt_mvp/features/search/presentation/screens/search_screen.dart';
import 'package:vybrnt_mvp/features/user/application/edit_user_bloc/edit_user_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/user_watcher_bloc/user_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/photo_model.dart';
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
  TabNavigator({
    this.navigatorKey,
    this.child,
    //this.tabItem,
    this.position,
    this.bloc,
    this.tabItemm,
    this.user,
  }); //
  final GlobalKey<NavigatorState> navigatorKey;
  //final TabItem tabItem;
  final TabItem1 tabItemm;
  final Widget child;
  final int position;
  final SimpleHiddenDrawerBloc bloc;
  final User user;
  final Key homeKey = PageStorageKey('homeKey');
  final Key calendarKey = PageStorageKey('calendarKey');
  final Key searchKey = PageStorageKey('searchKey');
  final Key notificationKey = PageStorageKey('notificationKey');
  final Key userKey = PageStorageKey('userKey');

  //final String currentUserID;

  void pushUserList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    var routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.userList](context)));
  }

  void pushReport(
    BuildContext context, {
    int materialIndex: 500,
    String contentID,
    String contentType,
    String ownerID,
    String ownerType,
    String currentUserID,
  }) {
    var routeBuilders = _routeBuilders(
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
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.report](context)));
  }

  void pushLikesList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    var routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.likes](context)));
  }

  void pushRepostList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    var routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.reposts](context)));
  }

  void pushFollowersList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    var routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.followerList](context)));
  }

  void pushFollowingList(BuildContext context,
      {int materialIndex: 500, KtList<String> userIDList}) {
    var routeBuilders = _routeBuilders(context, userIDList: userIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.followingList](context)));
  }

  void pushOrgList(BuildContext context,
      {int materialIndex: 500, KtList<String> orgIDList}) {
    var routeBuilders = _routeBuilders(context, orgIDList: orgIDList);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.orgList](context)));
  }

  void pushOrgPage(BuildContext context,
      {int materialIndex: 500, String orgID}) {
    var routeBuilders = _routeBuilders(context, orgID: orgID);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.orgPage](context)));
  }

  void pushUserProfile(BuildContext context,
      {String userID, String currentUserID}) {
    var routeBuilders =
        _routeBuilders(context, userID: userID, currentUserID: currentUserID);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.userProfile](context)));
  }

  void pushEditUserProfile(BuildContext context, {User user}) {
    var routeBuilders = _routeBuilders(context, user: user);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.editUserProfile](context)));
  }

  void pushEditOrgPage(BuildContext context, {Organization org}) {
    var routeBuilders = _routeBuilders(context, org: org);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.editOrgPage](context)));
  }

  void pushPostDetail(BuildContext context, {Post post}) {
    var routeBuilders = _routeBuilders(context, post: post);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.postDetail](context)));
  }

  void pushEventDetail(BuildContext context, {Event event}) {
    var routeBuilders = _routeBuilders(context, event: event);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.eventDetail](context)));
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {User user,
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
    switch (tabItemm) {
      case TabItem1.homefeed:
        return {
          TabNavigatorRoutes.root: (context) => HomeFeedScreen(
                key: homeKey,
                currentUserID: currentUserID,
              ),
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
              BlocProvider<EditUserBloc>(
                  create: (context) =>
                      getIt<EditUserBloc>()..add(EditUserEvent.getData(user)),
                  child: EditUserProfileScreen(user: user)),
          TabNavigatorRoutes.followingList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Following'),
              ),
          TabNavigatorRoutes.followerList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Followers'),
              ),
          TabNavigatorRoutes.orgList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getOrgData(orgIDList)),
                child: OrgListScreen(
                  orgIDList: orgIDList,
                  onPush: (orgID) => pushOrgPage(
                    context,
                    orgID: orgID,
                  ),
                ),
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
              BlocProvider<EditOrgBloc>(
                  create: (context) =>
                      getIt<EditOrgBloc>()..add(EditOrgEvent.getData(org)),
                  child: EditOrganizationPageScreen(org: org)),
          TabNavigatorRoutes.userList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Members'),
              ),
          TabNavigatorRoutes.likes: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Likes'),
              ),
          TabNavigatorRoutes.reposts: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Reposts'),
              ),
          TabNavigatorRoutes.report: (context) => ReportScreen(
                contentID: contentID,
                contentType: contentType,
                ownerID: ownerID,
                ownerType: ownerType,
                currentUserID: userID,
              )
        };
        break;
      case TabItem1.calendar:
        return {
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
              BlocProvider<EditUserBloc>(
                  create: (context) =>
                      getIt<EditUserBloc>()..add(EditUserEvent.getData(user)),
                  child: EditUserProfileScreen(user: user)),
          TabNavigatorRoutes.followingList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Following'),
              ),
          TabNavigatorRoutes.followerList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Followers'),
              ),
          TabNavigatorRoutes.orgList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getOrgData(orgIDList)),
                child: OrgListScreen(
                  orgIDList: orgIDList,
                  onPush: (orgID) => pushOrgPage(
                    context,
                    orgID: orgID,
                  ),
                ),
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
              BlocProvider<EditOrgBloc>(
                  create: (context) =>
                      getIt<EditOrgBloc>()..add(EditOrgEvent.getData(org)),
                  child: EditOrganizationPageScreen(org: org)),
          TabNavigatorRoutes.userList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Members'),
              ),
          TabNavigatorRoutes.likes: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Likes'),
              ),
          TabNavigatorRoutes.reposts: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Reposts'),
              ),
          TabNavigatorRoutes.report: (context) => ReportScreen(
                contentID: contentID,
                contentType: contentType,
                ownerID: ownerID,
                ownerType: ownerType,
                currentUserID: userID,
              )
        };
        break;
      case TabItem1.userprofile:
        return {
          TabNavigatorRoutes.root: (context) => BlocProvider<UserWatcherBloc>(
                create: (context) => getIt<UserWatcherBloc>()
                  ..add(UserWatcherEvent.getData(
                      currentUserID: currentUserID, userID: currentUserID)),
                child: UserProfileScreen(
                  key: userKey,
                  menuButton: true,
                  userID: Provider.of<UserData>(context, listen: false)
                      .currentUserID,
                ),
              ),
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
              BlocProvider<EditUserBloc>(
                  create: (context) =>
                      getIt<EditUserBloc>()..add(EditUserEvent.getData(user)),
                  child: EditUserProfileScreen(user: user)),
          TabNavigatorRoutes.followingList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Following'),
              ),
          TabNavigatorRoutes.followerList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Followers'),
              ),
          TabNavigatorRoutes.orgList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getOrgData(orgIDList)),
                child: OrgListScreen(
                  orgIDList: orgIDList,
                  onPush: (orgID) => pushOrgPage(
                    context,
                    orgID: orgID,
                  ),
                ),
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
              BlocProvider<EditOrgBloc>(
                  create: (context) =>
                      getIt<EditOrgBloc>()..add(EditOrgEvent.getData(org)),
                  child: EditOrganizationPageScreen(org: org)),
          TabNavigatorRoutes.userList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Members'),
              ),
          TabNavigatorRoutes.likes: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Likes'),
              ),
          TabNavigatorRoutes.reposts: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Reposts'),
              ),
          TabNavigatorRoutes.report: (context) => ReportScreen(
                contentID: contentID,
                contentType: contentType,
                ownerID: ownerID,
                ownerType: ownerType,
                currentUserID: userID,
              )
        };
        break;
      case TabItem1.search:
        return {
          TabNavigatorRoutes.root: (context) => BlocProvider<SearchBloc>(
              create: (context) =>
                  getIt<SearchBloc>()..add(SearchEvent.getSearch('')),
              child: SearchScreen(key: searchKey)),
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
              BlocProvider<EditUserBloc>(
                  create: (context) =>
                      getIt<EditUserBloc>()..add(EditUserEvent.getData(user)),
                  child: EditUserProfileScreen(user: user)),
          TabNavigatorRoutes.followingList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Following'),
              ),
          TabNavigatorRoutes.followerList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Followers'),
              ),
          TabNavigatorRoutes.orgList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getOrgData(orgIDList)),
                child: OrgListScreen(
                  orgIDList: orgIDList,
                  onPush: (orgID) => pushOrgPage(
                    context,
                    orgID: orgID,
                  ),
                ),
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
              BlocProvider<EditOrgBloc>(
                  create: (context) =>
                      getIt<EditOrgBloc>()..add(EditOrgEvent.getData(org)),
                  child: EditOrganizationPageScreen(org: org)),
          TabNavigatorRoutes.userList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Members'),
              ),
          TabNavigatorRoutes.likes: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Likes'),
              ),
          TabNavigatorRoutes.reposts: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Reposts'),
              ),
          TabNavigatorRoutes.report: (context) => ReportScreen(
                contentID: contentID,
                contentType: contentType,
                ownerID: ownerID,
                ownerType: ownerType,
                currentUserID: userID,
              )
        };
      case TabItem1.activity:
        return {
          TabNavigatorRoutes.root: (context) => BlocProvider<ActivityBloc>(
                create: (context) =>
                    getIt<ActivityBloc>()..add(ActivityEvent.getData()),
                child: ActivityScreen(
                  key: notificationKey,
                  currentUserID: Provider.of<UserData>(context, listen: false)
                      .currentUserID,
                ),
              ),
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
          TabNavigatorRoutes.postDetail: (context) =>
              BlocProvider<PostActorBloc>(
                  create: (context) => getIt<PostActorBloc>()
                    ..add(PostActorEvent.getData(
                      post,
                      senderID: post.senderID.getOrCrash(),
                      currentUserID: currentUserID,
                      orgID: post.orgID.getOrCrash(),
                    )),
                  child: PostDetailScreen(
                    post: post,
                    color: Colors.black,
                  )),
          TabNavigatorRoutes.eventDetail: (context) =>
              BlocProvider<EventDetailBloc>(
                  create: (context) => getIt<EventDetailBloc>()
                    ..add(EventDetailEvent.getData(
                        senderID: event.senderID,
                        currentUserID: currentUserID,
                        orgID: event.orgID,
                        eventID: event.eventID.getOrCrash(),
                        isOrg: event.isOrg)),
                  child: EventDetailScreen(event: event)),
          TabNavigatorRoutes.editUserProfile: (context) =>
              BlocProvider<EditUserBloc>(
                  create: (context) =>
                      getIt<EditUserBloc>()..add(EditUserEvent.getData(user)),
                  child: EditUserProfileScreen(user: user)),
          TabNavigatorRoutes.followingList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Following'),
              ),
          TabNavigatorRoutes.followerList: (context) =>
              BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child:
                    UserListScreen(userIDList: userIDList, title: 'Followers'),
              ),
          TabNavigatorRoutes.orgList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getOrgData(orgIDList)),
                child: OrgListScreen(
                  orgIDList: orgIDList,
                  onPush: (orgID) => pushOrgPage(
                    context,
                    orgID: orgID,
                  ),
                ),
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
              BlocProvider<EditOrgBloc>(
                  create: (context) =>
                      getIt<EditOrgBloc>()..add(EditOrgEvent.getData(org)),
                  child: EditOrganizationPageScreen(org: org)),
          TabNavigatorRoutes.userList: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Members'),
              ),
          TabNavigatorRoutes.likes: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Likes'),
              ),
          TabNavigatorRoutes.reposts: (context) => BlocProvider<UserListBloc>(
                create: (context) => getIt<UserListBloc>()
                  ..add(UserListEvent.getUserData(userIDList)),
                child: UserListScreen(userIDList: userIDList, title: 'Reposts'),
              ),
          TabNavigatorRoutes.report: (context) => ReportScreen(
                contentID: contentID,
                contentType: contentType,
                ownerID: ownerID,
                ownerType: ownerType,
                currentUserID: userID,
              )
        };
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    var routeBuilders =
        _routeBuilders(context, currentUserID: currentUserID, user: user);

    return TabNavigatorProvider(
      tabNavigator: this,
      child: Navigator(
          observers: [
            HeroController(), // this could has caused the hero issue
          ],
          key: navigatorKey,
          initialRoute: TabNavigatorRoutes.root,
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(
                settings: RouteSettings(name: "/"),
                builder: (context) =>
                    routeBuilders[routeSettings.name](context));
          }),
    );
  }
}
