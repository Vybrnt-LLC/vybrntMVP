import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:vybrnt_mvp/features/authentication/application/auth/bloc/auth_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

import '../../../../environment.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final env = Provider.of<Color>(context).toString() == Colors.red.toString()
        ? Environment.dev
        : Environment.prod;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              context
                  .bloc<AuthBloc>()
                  .add(AuthEvent.initializePushNotifications(env));
              context
                  .bloc<AuthBloc>()
                  .add(AuthEvent.setAnalyticsUserID(_.user.id.getOrCrash()));
              Provider.of<UserData>(context, listen: false).currentUserID =
                  _.user.id.getOrCrash();
              // ExtendedNavigator.of(context);
              context.navigator.replace(route.Routes.wrapper2);
              // .pushReplacementNamed(route.Router.wrapper2);
            },
            unauthenticated: (_) {
              //ExtendedNavigator.of(context);
              context.navigator.replace(route.Routes.signInPage);
              //Navigator.pop(context);
            });
      },
      child: _PageWidget(),
    );
    //final user = Provider.of<UserData>(context);
    // return StreamBuilder<FirebaseUser>(
    //     stream: FirebaseAuth.instance.onAuthStateChanged,
    //     builder: (BuildContext context, snapshot) {
    //       if (snapshot.hasData) {
    //         Provider.of<User>(context).currentUserID = snapshot.data.uid as UniqueId;
    //         return ChangeNotifierProvider<TabNavigator>(
    //           create: (_) => TabNavigator(),
    //           child: AnimatedSplash(
    //             imagePath: 'assets/images/vybrnt_title_clear_no_wm.png',
    //             home: HiddenDrawer(),
    //             duration: 2000,
    //             type: AnimatedSplashType.StaticDuration,
    //           ),
    //         );
    //       } else {
    //         //return NavBarSetUp();
    //         return SignInForm();//LoginScreen();
    //       }

    //       //   if (user == null) {
    //       //     return LoginScreen();
    //       //   } else {
    //       //     //return NavBarSetUp();
    //       //     return ChangeNotifierProvider<TabNavigator>(create:(_) => TabNavigator(), child: HiddenDrawer());
    //       // };
    //     });
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
