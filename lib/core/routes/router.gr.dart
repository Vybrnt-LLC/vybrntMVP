// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../features/authentication/presentation/screens/forgot_my_password_page.dart';
import '../../features/authentication/presentation/screens/intro_screen.dart';
import '../../features/authentication/presentation/screens/onboarding_account_screen.dart';
import '../../features/authentication/presentation/screens/onboarding_follow.dart';
import '../../features/authentication/presentation/screens/onboarding_info_screen.dart';
import '../../features/authentication/presentation/screens/onboarding_vyb.dart';
import '../../features/authentication/presentation/screens/sign_in_page.dart';
import '../../features/authentication/presentation/screens/welcome_screen.dart';
import '../../features/authentication/presentation/widgets/wrapper.dart';
import '../../features/authentication/presentation/widgets/wrapper2.dart';
import '../../features/calendar/domain/models/event.dart';
import '../../features/calendar/presentation/screens/create_event_screen.dart';
import '../../features/calendar/presentation/screens/event_screen.dart';
import '../../features/calendar/presentation/widgets/event_detail_image.dart';
import '../../features/messaging/presentation/screens/chat_screen.dart';
import '../../features/messaging/presentation/screens/messaging_screen.dart';
import '../../features/organization/domain/models/organization.dart';
import '../../features/organization/presentation/screens/edit_organization_page_screen.dart';
import '../../features/organization/presentation/screens/org_screen.dart';
import '../../features/organization/presentation/screens/user_list_screen.dart';
import '../../features/posts/presentation/posts/post_detail/post_screen.dart';
import '../../features/user/domain/models/user.dart';
import '../../features/user/presentation/screens/edit_user_profile_screen.dart';
import '../../features/user/presentation/screens/org_list_screen.dart';
import '../../features/user/presentation/screens/user_screen.dart';
import '../report/report_page.dart';

class Routes {
  static const String signInPage = '/sign-in-page';
  static const String welcome = '/welcome-screen';
  static const String intro = '/intro-screen';
  static const String onboardingAccount = '/onboarding-account-screen';
  static const String onboardingInfo = '/onboarding-info-screen';
  static const String onboardingVyb = '/onboarding-vyb-screen';
  static const String onboardingFollow = '/onboarding-follow-screen';
  static const String forgotMyPasswordPage = '/forgot-my-password-page';
  static const String wrapper = '/';
  static const String wrapper2 = '/Wrapper2';
  static const String eventDetailImage = '/event-detail-image';
  static const String createEvent = '/create-event-screen';
  static const String messaging = '/messaging-screen';
  static const String eventDetail = '/event-screen';
  static const String chat = '/chat-screen';
  static const String postDetail = '/post-screen';
  static const String user = '/user-screen';
  static const String org = '/org-screen';
  static const String editUserProfile = '/edit-user-profile-screen';
  static const String userList = '/user-list-screen';
  static const String orgList = '/org-list-screen';
  static const String editOrganizationPageScreen =
      '/edit-organization-page-screen';
  static const String report = '/report-screen';
  static const all = <String>{
    signInPage,
    welcome,
    intro,
    onboardingAccount,
    onboardingInfo,
    onboardingVyb,
    onboardingFollow,
    forgotMyPasswordPage,
    wrapper,
    wrapper2,
    eventDetailImage,
    createEvent,
    messaging,
    eventDetail,
    chat,
    postDetail,
    user,
    org,
    editUserProfile,
    userList,
    orgList,
    editOrganizationPageScreen,
    report,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.welcome, page: WelcomeScreen),
    RouteDef(Routes.intro, page: IntroScreen),
    RouteDef(Routes.onboardingAccount, page: OnboardingAccountScreen),
    RouteDef(Routes.onboardingInfo, page: OnboardingInfoScreen),
    RouteDef(Routes.onboardingVyb, page: OnboardingVybScreen),
    RouteDef(Routes.onboardingFollow, page: OnboardingFollowScreen),
    RouteDef(Routes.forgotMyPasswordPage, page: ForgotMyPasswordPage),
    RouteDef(Routes.wrapper, page: Wrapper),
    RouteDef(Routes.wrapper2, page: Wrapper2),
    RouteDef(Routes.eventDetailImage, page: EventDetailImage),
    RouteDef(Routes.createEvent, page: CreateEventScreen),
    RouteDef(Routes.messaging, page: MessagingScreen),
    RouteDef(Routes.eventDetail, page: EventScreen),
    RouteDef(Routes.chat, page: ChatScreen),
    RouteDef(Routes.postDetail, page: PostScreen),
    RouteDef(Routes.user, page: UserScreen),
    RouteDef(Routes.org, page: OrgScreen),
    RouteDef(Routes.editUserProfile, page: EditUserProfileScreen),
    RouteDef(Routes.userList, page: UserListScreen),
    RouteDef(Routes.orgList, page: OrgListScreen),
    RouteDef(Routes.editOrganizationPageScreen,
        page: EditOrganizationPageScreen),
    RouteDef(Routes.report, page: ReportScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    WelcomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeScreen(),
        settings: data,
      );
    },
    IntroScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroScreen(),
        settings: data,
      );
    },
    OnboardingAccountScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingAccountScreen(),
        settings: data,
      );
    },
    OnboardingInfoScreen: (data) {
      final args = data.getArgs<OnboardingInfoScreenArguments>(
        orElse: () => OnboardingInfoScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingInfoScreen(
          key: args.key,
          firestore: args.firestore,
        ),
        settings: data,
      );
    },
    OnboardingVybScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingVybScreen(),
        settings: data,
      );
    },
    OnboardingFollowScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingFollowScreen(),
        settings: data,
      );
    },
    ForgotMyPasswordPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotMyPasswordPage(),
        settings: data,
      );
    },
    Wrapper: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Wrapper(),
        settings: data,
      );
    },
    Wrapper2: (data) {
      final args = data.getArgs<Wrapper2Arguments>(
        orElse: () => Wrapper2Arguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => Wrapper2(
          key: args.key,
          firestore: args.firestore,
        ),
        settings: data,
      );
    },
    EventDetailImage: (data) {
      final args = data.getArgs<EventDetailImageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EventDetailImage(args.eventImageUrl),
        settings: data,
      );
    },
    CreateEventScreen: (data) {
      final args = data.getArgs<CreateEventScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateEventScreen(
          key: args.key,
          editedEvent: args.editedEvent,
        ),
        settings: data,
      );
    },
    MessagingScreen: (data) {
      final args = data.getArgs<MessagingScreenArguments>(
        orElse: () => MessagingScreenArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            MessagingScreen(
          onPush: args.onPush,
          onPushSearch: args.onPushSearch,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        fullscreenDialog: true,
      );
    },
    EventScreen: (data) {
      final args = data.getArgs<EventScreenArguments>(
        orElse: () => EventScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EventScreen(
          key: args.key,
          eventID: args.eventID,
          type: args.type,
          typeID: args.typeID,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    ChatScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatScreen(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PostScreen: (data) {
      final args = data.getArgs<PostScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostScreen(
          key: args.key,
          postID: args.postID,
          type: args.type,
          typeID: args.typeID,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    UserScreen: (data) {
      final args = data.getArgs<UserScreenArguments>(
        orElse: () => UserScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserScreen(
          key: args.key,
          userID: args.userID,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    OrgScreen: (data) {
      final args = data.getArgs<OrgScreenArguments>(
        orElse: () => OrgScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrgScreen(
          key: args.key,
          orgID: args.orgID,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    EditUserProfileScreen: (data) {
      final args = data.getArgs<EditUserProfileScreenArguments>(
        orElse: () => EditUserProfileScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditUserProfileScreen(user: args.user),
        settings: data,
        fullscreenDialog: true,
      );
    },
    UserListScreen: (data) {
      final args = data.getArgs<UserListScreenArguments>(
        orElse: () => UserListScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserListScreen(
          key: args.key,
          userIDList: args.userIDList,
          title: args.title,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    OrgListScreen: (data) {
      final args = data.getArgs<OrgListScreenArguments>(
        orElse: () => OrgListScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrgListScreen(
          key: args.key,
          orgIDList: args.orgIDList,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    EditOrganizationPageScreen: (data) {
      final args = data.getArgs<EditOrganizationPageScreenArguments>(
        orElse: () => EditOrganizationPageScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditOrganizationPageScreen(
          org: args.org,
          name: args.name,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    ReportScreen: (data) {
      final args = data.getArgs<ReportScreenArguments>(
        orElse: () => ReportScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReportScreen(
          key: args.key,
          currentUserID: args.currentUserID,
          contentID: args.contentID,
          contentType: args.contentType,
          ownerID: args.ownerID,
          ownerType: args.ownerType,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OnboardingInfoScreen arguments holder class
class OnboardingInfoScreenArguments {
  final Key key;
  final FirebaseFirestore firestore;
  OnboardingInfoScreenArguments({this.key, this.firestore});
}

/// Wrapper2 arguments holder class
class Wrapper2Arguments {
  final Key key;
  final FirebaseFirestore firestore;
  Wrapper2Arguments({this.key, this.firestore});
}

/// EventDetailImage arguments holder class
class EventDetailImageArguments {
  final String eventImageUrl;
  EventDetailImageArguments({@required this.eventImageUrl});
}

/// CreateEventScreen arguments holder class
class CreateEventScreenArguments {
  final Key key;
  final Event editedEvent;
  CreateEventScreenArguments({this.key, @required this.editedEvent});
}

/// MessagingScreen arguments holder class
class MessagingScreenArguments {
  final void Function(int) onPush;
  final void Function(int) onPushSearch;
  MessagingScreenArguments({this.onPush, this.onPushSearch});
}

/// EventScreen arguments holder class
class EventScreenArguments {
  final Key key;
  final String eventID;
  final String type;
  final String typeID;
  EventScreenArguments({this.key, this.eventID, this.type, this.typeID});
}

/// PostScreen arguments holder class
class PostScreenArguments {
  final Key key;
  final String postID;
  final String type;
  final String typeID;
  PostScreenArguments(
      {this.key,
      @required this.postID,
      @required this.type,
      @required this.typeID});
}

/// UserScreen arguments holder class
class UserScreenArguments {
  final Key key;
  final String userID;
  UserScreenArguments({this.key, this.userID});
}

/// OrgScreen arguments holder class
class OrgScreenArguments {
  final Key key;
  final String orgID;
  OrgScreenArguments({this.key, this.orgID});
}

/// EditUserProfileScreen arguments holder class
class EditUserProfileScreenArguments {
  final User user;
  EditUserProfileScreenArguments({this.user});
}

/// UserListScreen arguments holder class
class UserListScreenArguments {
  final Key key;
  final KtList<String> userIDList;
  final String title;
  UserListScreenArguments({this.key, this.userIDList, this.title});
}

/// OrgListScreen arguments holder class
class OrgListScreenArguments {
  final Key key;
  final KtList<String> orgIDList;
  OrgListScreenArguments({this.key, this.orgIDList});
}

/// EditOrganizationPageScreen arguments holder class
class EditOrganizationPageScreenArguments {
  final Organization org;
  final String name;
  EditOrganizationPageScreenArguments({this.org, this.name});
}

/// ReportScreen arguments holder class
class ReportScreenArguments {
  final Key key;
  final String currentUserID;
  final String contentID;
  final String contentType;
  final String ownerID;
  final String ownerType;
  ReportScreenArguments(
      {this.key,
      this.currentUserID = '',
      this.contentID = '',
      this.contentType = '',
      this.ownerID = '',
      this.ownerType = ''});
}
