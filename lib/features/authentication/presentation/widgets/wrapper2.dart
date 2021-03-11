import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:vybrnt_mvp/core/auth/firestore_helpers.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator.dart';
import 'package:vybrnt_mvp/core/swipe_menu/presentation/hidden_drawer.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';

//import 'package:vybrnt_mvp/features/user/domain/models/user_model.dart';

class Wrapper2 extends StatelessWidget {
  final FirebaseFirestore firestore;

  const Wrapper2({Key key, this.firestore}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firestore.currentUserID(),
        builder: (context, snapshot) {
          Provider.of<UserData>(context).currentUserID =
              snapshot.data.toString();
          return ChangeNotifierProvider<TabNavigator>(
            create: (_) => TabNavigator(),
            child: AnimatedSplashScreen.withScreenFunction(
              splash: 'assets/logos/VYBrntfin-06.png',
              screenFunction: () async {
                return WillPopScope(
                    onWillPop: () async {
                      return false;
                    },
                    child: const HiddenDrawer());
              },
              splashIconSize: 300.0,
              duration: 2000,
              pageTransitionType: PageTransitionType.rightToLeft,
            ),
          );
        });
  }
}
