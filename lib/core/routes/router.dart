import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vybrnt_mvp/core/report/report_page.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/screens/sign_in_page.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/wrapper.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/wrapper2.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/create_event_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_detail_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/screens/event_screen.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/messaging/presentation/screens/chat_screen.dart';
import 'package:vybrnt_mvp/features/messaging/presentation/screens/messaging_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/edit_organization_page_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/org_screen.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/user_list_screen.dart';
import 'package:vybrnt_mvp/features/posts/presentation/core/post_detail_with_bloc_provider.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/post_detail/post_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/edit_user_profile_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/org_list_screen.dart';
import 'package:vybrnt_mvp/features/user/presentation/screens/user_screen.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/screens/forgot_my_password_page.dart';
@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SignInPage, name: 'signInPage', initial: false),
    MaterialRoute(page: ForgotMyPasswordPage, name: 'forgotMyPasswordPage', initial: false),
    MaterialRoute(page: Wrapper, name: 'wrapper', initial: true),
    MaterialRoute(page: Wrapper2, name: 'wrapper2', initial: false),
    MaterialRoute(
        page: EventDetailImage, name: 'eventDetailImage', initial: false),
    MaterialRoute(page: CreateEventScreen, name: 'createEvent', initial: false),
    CustomRoute(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        //durationInMilliseconds: 800,
        page: MessagingScreen,
        name: 'messaging',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: EventScreen,
        name: 'eventDetail',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: ChatScreen, name: 'chat', initial: false, fullscreenDialog: true),
    MaterialRoute(
        page: PostScreen,
        name: 'postDetail',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: UserScreen, name: 'user', initial: false, fullscreenDialog: true),
    MaterialRoute(
        page: OrgScreen, name: 'org', initial: false, fullscreenDialog: true),
    MaterialRoute(
        page: EditUserProfileScreen,
        name: 'editUserProfile',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: UserListScreen,
        name: 'userList',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: OrgListScreen,
        name: 'orgList',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: EditOrganizationPageScreen,
        name: 'editOrganizationPageScreen',
        initial: false,
        fullscreenDialog: true),
    MaterialRoute(
        page: ReportScreen,
        name: 'report',
        initial: false,
        fullscreenDialog: true)
  ],
)
class $Router {}
