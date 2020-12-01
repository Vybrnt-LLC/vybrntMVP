// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../features/activity/application/actor/activity_actor_bloc.dart';
import '../features/activity/application/bloc/activity_bloc.dart';
import '../features/activity/repository/activity_service.dart';
import '../features/activity/repository/analytics_service.dart';
import '../features/authentication/application/auth/bloc/auth_bloc.dart';
import '../features/posts/application/bookmark_watcher/bookmark_watcher_bloc.dart';
import '../features/calendar/application/bloc/calendar_bloc.dart';
import '../features/calendar/services/calendar_service.dart';
import '../features/homefeed/application/category_events/category_events_bloc.dart';
import '../features/homefeed/application/category_posts/category_posts_bloc.dart';
import '../features/posts/application/comment_actor/comment_actor_bloc.dart';
import '../features/calendar/application/create_event_bloc/create_event_bloc.dart';
import '../features/posts/application/create_post/create_post_form_bloc.dart';
import '../features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import '../features/user/application/edit_user_bloc/edit_user_bloc.dart';
import '../features/calendar/application/event_detail_bloc/event_detail_bloc.dart';
import '../features/calendar/services/event_detail_service.dart';
import '../features/organization/application/event_list_bloc/event_list_bloc.dart';
import '../features/calendar/application/event_tile_bloc/event_tile_bloc.dart';
import '../features/authentication/services/firebase_auth_facade.dart';
import 'auth/firebase_injectable_module.dart';
import '../features/homefeed/application/home_events/home_events_bloc.dart';
import '../features/homefeed/service/homefeed_service.dart';
import '../features/homefeed/application/home_posts/home_posts_bloc.dart';
import '../features/activity/domain/i_activity_service.dart';
import '../features/activity/domain/i_analytics_service.dart';
import '../features/authentication/domain/i_auth_facade.dart';
import '../features/calendar/domain/i_calendar_service.dart';
import '../features/calendar/domain/i_event_detail_service.dart';
import '../features/homefeed/domain/i_homefeed_service.dart';
import 'routes/i_navigation_service.dart';
import '../features/organization/domain/i_org_service.dart';
import '../features/posts/domain/posts/i_post_repository.dart';
import '../features/activity/domain/i_push_notification.dart';
import '../features/user/domain/i_user_service.dart';
import 'routes/navigation_service.dart';
import '../features/organization/application/bloc/org_bloc.dart';
import '../features/calendar/application/org_bloc/org_calendar_bloc.dart';
import '../features/organization/services/org_service.dart';
import '../features/organization/application/org_watcher_bloc/org_watcher_bloc.dart';
import '../features/posts/application/post_actor/post_actor_bloc.dart';
import '../features/posts/infrastructure/posts/post_repository.dart';
import '../features/posts/application/post_watcher/post_watcher_bloc.dart';
import '../features/activity/repository/push_notification_service.dart';
import '../features/search/application/bloc/search_bloc.dart';
import '../features/authentication/application/sign_in_form/bloc/sign_in_form_bloc.dart';
import '../features/user/application/bloc/user_bloc.dart';
import '../features/user/application/user_event_list_bloc/user_event_list_bloc.dart';
import '../features/organization/application/user_list_bloc/user_list_bloc.dart';
import '../features/user/services/user_service.dart';
import '../features/user/application/user_watcher_bloc/user_watcher_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<AnalyticsService>(
      () => firebaseInjectableModule.analyticsService);
  gh.lazySingleton<FirebaseAnalytics>(
      () => firebaseInjectableModule.firebaseAnalytics);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IActivityService>(
      () => ActivityService(get<FirebaseFirestore>()));
  gh.lazySingleton<IAnalyticsService>(() => AnalyticsService());
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<ICalendarService>(
      () => CalendarService(get<FirebaseFirestore>()));
  gh.lazySingleton<IEventDetailService>(() => EventDetailService());
  gh.lazySingleton<IHomeFeedService>(
      () => HomeFeedService(get<FirebaseFirestore>()));
  gh.lazySingleton<INavigationService>(() => NavigationService());
  gh.lazySingleton<IOrgService>(
      () => OrgService(firestore: get<FirebaseFirestore>()));
  gh.lazySingleton<IPostRepository>(
      () => PostRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserService>(
      () => UserService(firestore: get<FirebaseFirestore>()));
  gh.lazySingleton<NavigationService>(
      () => firebaseInjectableModule.navigationService);
  gh.factory<OrgBloc>(() => OrgBloc(get<IOrgService>()));
  gh.factory<OrgCalendarBloc>(
      () => OrgCalendarBloc(get<ICalendarService>(), get<IOrgService>()));
  gh.factory<OrgWatcherBloc>(() => OrgWatcherBloc(get<IOrgService>()));
  gh.factory<PostActorBloc>(() => PostActorBloc(get<IPostRepository>()));
  gh.factory<PostWatcherBloc>(() => PostWatcherBloc(get<IPostRepository>()));
  gh.factory<SearchBloc>(() => SearchBloc(get<IOrgService>()));
  gh.factory<SignInFormBloc>(
      () => SignInFormBloc(get<IAuthFacade>(), get<IAnalyticsService>()));
  gh.factory<UserBloc>(() => UserBloc(get<IUserService>()));
  gh.factory<UserEventListBloc>(() => UserEventListBloc(get<IUserService>()));
  gh.factory<UserListBloc>(() => UserListBloc(get<IOrgService>()));
  gh.factory<UserWatcherBloc>(() => UserWatcherBloc(get<IUserService>()));
  gh.factory<ActivityActorBloc>(
      () => ActivityActorBloc(get<IActivityService>()));
  gh.factory<ActivityBloc>(() => ActivityBloc(get<IActivityService>()));
  gh.factory<BookmarkWatcherBloc>(
      () => BookmarkWatcherBloc(get<IPostRepository>()));
  gh.factory<CalendarBloc>(() => CalendarBloc(get<ICalendarService>()));
  gh.factory<CategoryEventsBloc>(
      () => CategoryEventsBloc(get<IHomeFeedService>()));
  gh.factory<CategoryPostsBloc>(
      () => CategoryPostsBloc(get<IHomeFeedService>()));
  gh.factory<CommentActorBloc>(() => CommentActorBloc(get<IPostRepository>()));
  gh.factory<CreateEventBloc>(() => CreateEventBloc(
        get<ICalendarService>(),
        get<IEventDetailService>(),
        get<IOrgService>(),
        get<IAnalyticsService>(),
      ));
  gh.factory<CreatePostFormBloc>(() => CreatePostFormBloc(
        get<IPostRepository>(),
        get<IOrgService>(),
        get<IAnalyticsService>(),
      ));
  gh.factory<EditOrgBloc>(() => EditOrgBloc(get<IOrgService>()));
  gh.factory<EditUserBloc>(() => EditUserBloc(get<IUserService>()));
  gh.factory<EventDetailBloc>(
      () => EventDetailBloc(get<IEventDetailService>(), get<IOrgService>()));
  gh.factory<EventListBloc>(() => EventListBloc(get<IOrgService>()));
  gh.factory<EventTileBloc>(() => EventTileBloc(get<IEventDetailService>()));
  gh.factory<HomeEventsBloc>(() => HomeEventsBloc(get<IHomeFeedService>()));
  gh.factory<HomePostsBloc>(() => HomePostsBloc(get<IHomeFeedService>()));
  gh.lazySingleton<IPushNotificationService>(() => PushNotificationService(
        firebaseMessaging: get<FirebaseMessaging>(),
        navigationService: get<NavigationService>(),
        firestore: get<FirebaseFirestore>(),
      ));
  gh.factory<AuthBloc>(() => AuthBloc(
        get<IAuthFacade>(),
        get<IPushNotificationService>(),
        get<IAnalyticsService>(),
      ));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
