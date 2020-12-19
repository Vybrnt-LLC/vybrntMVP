import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'package:vybrnt_mvp/core/navbar/application/bloc/navbar_bloc.dart';

import 'package:vybrnt_mvp/core/navbar/navbar_setup.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;

import 'package:vybrnt_mvp/core/swipe_menu/presentation/beta_screen.dart';

import 'package:vybrnt_mvp/features/authentication/application/auth/bloc/auth_bloc.dart';

import 'package:vybrnt_mvp/features/posts/application/bookmark_watcher/bookmark_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/posts/presentation/posts/bookmarks/bookmark_screen.dart';

import '../../injection.dart';

class HiddenDrawer extends StatelessWidget {
  final ValueChanged<int> onPush1;
  final String userID;

  HiddenDrawer({this.onPush1, this.userID});

  @override
  Widget build(BuildContext context) {
    final List<ScreenHiddenDrawer> itens = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Home",
            colorLineSelected: Colors.teal,
            baseStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
            selectedStyle: TextStyle(color: Colors.teal),
          ),
          BlocProvider(
            create: (context) =>
                getIt<NavbarBloc>()..add(const NavbarEvent.initialize()),
            child: NavBarSetUp(userID: userID),
          )),
      // ScreenHiddenDrawer(
      //     ItemHiddenMenu(
      //       name: "Settings",
      //       colorLineSelected: Colors.orange,
      //       baseStyle:
      //           TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
      //       selectedStyle: TextStyle(color: Colors.orange),
      //       // onTap: () => onPush1(0),
      //       //Navig
      //     ),
      //     SettingsScreen()),
      // ScreenHiddenDrawer(
      //     ItemHiddenMenu(
      //       name: "Color Vybes",
      //       colorLineSelected: Colors.orange,
      //       baseStyle:
      //           TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
      //       selectedStyle: TextStyle(color: Colors.orange),
      //       // onTap: () => onPush1(0),
      //       //Navig
      //     ),
      //     SettingsScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Saved Posts",
            colorLineSelected: Colors.orange,
            baseStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
            selectedStyle: TextStyle(color: Colors.orange),
          ),
          BlocProvider<BookmarkWatcherBloc>(
              create: (context) => getIt<BookmarkWatcherBloc>()
                ..add(BookmarkWatcherEvent.getData()),
              child: BookmarkScreen())),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "References",
            colorLineSelected: Colors.orange,
            baseStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
            selectedStyle: TextStyle(color: Colors.orange),
          ),
          BetaScreen()),
      // ScreenHiddenDrawer(
      //     ItemHiddenMenu(
      //       name: "Create Organization",
      //       colorLineSelected: Colors.orange,
      //       baseStyle:
      //           TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25.0),
      //       selectedStyle: TextStyle(color: Colors.orange),
      //     ),
      //     CreateOrgScreen()),
    ];

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) {
            //ExtendedNavigator.of(context);
            context.navigator.replace(route.Routes.signInPage);
          },
          orElse: () {},
        );
      },
      child: HiddenDrawerMenu(
        disableAppBarDefault: true,
        isDraggable: true,
        //userID: userID,
        //SwipeBar(
        initPositionSelected: 0,
        screens: itens,
        backgroundColorMenu: Colors.blue[900],
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
        //    slidePercent: 80.0,
        //    verticalScalePercent: 80.0,
        //    contentCornerRadius: 10.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        backgroundMenu: new DecorationImage(
            fit: BoxFit.cover, image: ExactAssetImage('assets/background.png')),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    backgroundColorAppBar: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      ),
    );
  }
}
