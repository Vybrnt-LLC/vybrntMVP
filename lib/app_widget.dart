//import 'package:firebase_auth/firebase_auth.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
//import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/ui/global/theme/bloc/theme_bloc.dart';
import 'package:vybrnt_mvp/features/activity/repository/analytics_service.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
//import 'package:flutter/services.dart';
import 'core/injection.dart';
import 'core/routes/router.gr.dart' as route;

import 'features/authentication/application/auth/bloc/auth_bloc.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   configureInjection(Environment.prod);
//   await Firebase.initializeApp();
//   // Set `enableInDevMode` to true to see reports while in debug mode
//   // This is only to be used for confirming that reports are being
//   // submitted as expected. It is not intended to be used for everyday
//   // development.\
//   if (kDebugMode) {
//     await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
//   }

//   // Pass all uncaught errors from the framework to Crashlytics.
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFA4528A), //or set color with: Color(0xFF0000FF)
    ));
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    // FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return BlocProvider(
      create: (_) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: ChangeNotifierProvider(
        create: (context) => UserData(),
        child: OverlaySupport(
          child: BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(),
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: _buildWithTheme,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      color: Colors.white,
      title: 'Vybrnt',
      theme: state.themeData,
      //  onGenerateRoute: ,

      //theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder(
          navigatorKey: getIt<NavigationService>().navigatorKey,
          observers: [getIt<AnalyticsService>().getAnalyticsObserver()],
          router: route.Router(),
          initialRoute: '/',
          builder: (ctx, extendedNav) => extendedNav),
      // onGenerateRoute: route.Router.onGenerateRoute,
      // initialRoute: route.Router.wrapper,
      // navigatorKey: route.Router.navigator.key,

      // },
    );
  }
}
