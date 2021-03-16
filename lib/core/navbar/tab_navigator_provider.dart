import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator.dart';

class TabNavigatorProvider extends InheritedWidget {
  final TabNavigator tabNavigator;

  const TabNavigatorProvider({
    Key key,
    @required this.tabNavigator,
    Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TabNavigator of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<TabNavigatorProvider>()
      .tabNavigator;
}
