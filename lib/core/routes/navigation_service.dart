import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:vybrnt_mvp/core/routes/i_navigation_service.dart';

@LazySingleton(as: INavigationService)
class NavigationService implements INavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  @override
  Future navigateTo(String routeName, {dynamic arguments}) {
    // ExtendedNavigator(
    //     router: route.Router(), name: routeName, navigatorKey: navigatorKey);
    // ExtendedNavigator.named(routeName).push(routeName, arguments: arguments);
    return ExtendedNavigator.root.push(routeName, arguments: arguments);

    //navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  @override
  void goBack() {
    return navigatorKey.currentState.pop();
  }
}
