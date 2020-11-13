// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/presentation/screens/sign_in_page.dart';
import '../../features/authentication/presentation/widgets/tags.dart';
import '../../features/authentication/presentation/widgets/wrapper.dart';
import '../../features/authentication/presentation/widgets/wrapper2.dart';
import '../../features/calendar/domain/models/event.dart';
import '../../features/calendar/presentation/screens/create_event_screen.dart';
import '../../features/calendar/presentation/screens/event_detail_screen.dart';
import '../../features/calendar/presentation/widgets/event_detail_image.dart';
import '../../features/messaging/presentation/screens/chat_screen.dart';
import '../../features/messaging/presentation/screens/messaging_screen.dart';
import '../../features/posts/presentation/core/post_detail_with_bloc_provider.dart';

class Routes {
  static const String signInPage = '/sign-in-page';
  static const String wrapper = '/';
  static const String tags = '/Tags';
  static const String wrapper2 = '/Wrapper2';
  static const String eventDetailImage = '/event-detail-image';
  static const String createEvent = '/create-event-screen';
  static const String messaging = '/messaging-screen';
  static const String eventDetailScreen = '/event-detail-screen';
  static const String chat = '/chat-screen';
  static const String postDetail = '/post-detail-bloc-provider';
  static const all = <String>{
    signInPage,
    wrapper,
    tags,
    wrapper2,
    eventDetailImage,
    createEvent,
    messaging,
    eventDetailScreen,
    chat,
    postDetail,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.wrapper, page: Wrapper),
    RouteDef(Routes.tags, page: Tags),
    RouteDef(Routes.wrapper2, page: Wrapper2),
    RouteDef(Routes.eventDetailImage, page: EventDetailImage),
    RouteDef(Routes.createEvent, page: CreateEventScreen),
    RouteDef(Routes.messaging, page: MessagingScreen),
    RouteDef(Routes.eventDetailScreen, page: EventDetailScreen),
    RouteDef(Routes.chat, page: ChatScreen),
    RouteDef(Routes.postDetail, page: PostDetailBlocProvider),
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
    Wrapper: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Wrapper(),
        settings: data,
      );
    },
    Tags: (data) {
      final args = data.getArgs<TagsArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => Tags(
          args.userID,
          uid: args.uid,
        ),
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
      return MaterialPageRoute<dynamic>(
        builder: (context) => MessagingScreen(
          onPush: args.onPush,
          onPushSearch: args.onPushSearch,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    EventDetailScreen: (data) {
      final args = data.getArgs<EventDetailScreenArguments>(
        orElse: () => EventDetailScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EventDetailScreen(
          key: args.key,
          event: args.event,
          name: args.name,
          isAdmin: args.isAdmin,
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
    PostDetailBlocProvider: (data) {
      final args = data.getArgs<PostDetailBlocProviderArguments>(
        orElse: () => PostDetailBlocProviderArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostDetailBlocProvider(
          key: args.key,
          postID: args.postID,
          isOrg: args.isOrg,
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

/// Tags arguments holder class
class TagsArguments {
  final String userID;
  final dynamic uid;
  TagsArguments({@required this.userID, this.uid});
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

/// EventDetailScreen arguments holder class
class EventDetailScreenArguments {
  final Key key;
  final Event event;
  final String name;
  final bool isAdmin;
  EventDetailScreenArguments(
      {this.key, this.event, this.name, this.isAdmin = false});
}

/// PostDetailBlocProvider arguments holder class
class PostDetailBlocProviderArguments {
  final Key key;
  final String postID;
  final bool isOrg;
  PostDetailBlocProviderArguments({this.key, this.postID, this.isOrg});
}
