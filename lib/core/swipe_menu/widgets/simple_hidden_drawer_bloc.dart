import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/swipe_menu/widgets/hidden_drawer_controller.dart';
import 'package:vybrnt_mvp/core/swipe_menu/widgets/streams_simple_hidden_menu.dart';


class SimpleHiddenDrawerBloc {
  /// builder containing the drawer settings
  /// Try adding onpush here
  final int _initPositionSelected;


  final Widget Function(int position, SimpleHiddenDrawerBloc bloc)
      _screenSelectedBuilder;


  StreamsSimpleHiddenMenu controllers = new StreamsSimpleHiddenMenu();

  bool _startDrag = false;
  bool _isFirstPositionSelected = true;
  int positionStected = 0;

  SimpleHiddenDrawerBloc(
      this._initPositionSelected, this._screenSelectedBuilder) {
    controllers.getpositionSelected.listen((position) {
      if (position != positionStected || _isFirstPositionSelected) {
        positionStected = position;
        _setScreen(position);
        
       

        if (!_startDrag && !_isFirstPositionSelected) {
          toggle();
        }
      } else {
        toggle();
      }

      _isFirstPositionSelected = false;
    });

    controllers.setPositionSelected(_initPositionSelected);
  }

  dispose() {
    controllers.dispose();
  }

  void toggle() {
    controllers.setActionToggle(null);
  }

  void setSelectedMenuPosition(int position) {
    controllers.setPositionSelected(position);
  }

  int getPositionSelected() {
    return positionStected;
  }

  Stream<int> getPositionSelectedListener() {
    return controllers.getpositionSelected;
  }

  Stream<MenuState> getMenuStateListener() {
    return controllers.getMenuState;
  }

  _setScreen(int position) {
    Widget screen = _screenSelectedBuilder(position, this);
    if (screen != null) {
      controllers.setScreenSelected(screen);
      
    }
  }
}
