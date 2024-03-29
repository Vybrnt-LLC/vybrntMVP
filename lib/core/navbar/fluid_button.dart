import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/navbar/tab_color.dart';

import './fluid_icon.dart';
import './curves.dart';

typedef FluidNavBarButtonPressedCallback = void Function();

class FluidNavBarButton extends StatefulWidget {
  static const nominalExtent = Size(64, 64);

  final FluidFillIconData _iconData;
  final bool _selected;
  final FluidNavBarButtonPressedCallback _onPressed;
  final Widget _icon;

  const FluidNavBarButton(
      {FluidFillIconData iconData,
      bool selected,
      FluidNavBarButtonPressedCallback onPressed,
      Widget icon})
      : _iconData = iconData,
        _selected = selected,
        _onPressed = onPressed,
        _icon = icon;

  @override
  State createState() {
    // ignore: no_logic_in_create_state
    return _FluidNavBarButtonState(
        selected: _selected, onPressed: _onPressed, icon: _icon);
  }
}

class _FluidNavBarButtonState extends State<FluidNavBarButton>
    with SingleTickerProviderStateMixin {
  static const double _activeOffset = 16;
  static const double _defaultOffset = 0;
  static const double _radius = 25;

  //FluidFillIconData _iconData;
  bool _selected;
  FluidNavBarButtonPressedCallback _onPressed;
  Widget _icon;

  AnimationController _animationController;
  Animation<double> _animation;

  _FluidNavBarButtonState(
      {bool selected, FluidNavBarButtonPressedCallback onPressed, Widget icon})
      : // _iconData = iconData,
        _selected = selected,
        _onPressed = onPressed,
        _icon = icon;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 1666),
        reverseDuration: const Duration(milliseconds: 833),
        vsync: this);
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
    _startAnimation();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabColor = Provider.of<TabColor>(context).color;
    const ne = FluidNavBarButton.nominalExtent;
    final offsetCurve =
        _selected ? const ElasticOutCurve(0.38) : Curves.easeInQuint;
    //final scaleCurve = _selected ? CenteredElasticOutCurve(0.6) : CenteredElasticInCurve(0.6);

    final progress = LinearPointCurve(0.28, 0.0).transform(_animation.value);

    final offset = Tween<double>(begin: _defaultOffset, end: _activeOffset)
        .transform(offsetCurve.transform(progress));
    //final scaleCurveScale = 0.50;
    //final scaleY = 0.5 + scaleCurve.transform(progress) * scaleCurveScale + (0.5 - scaleCurveScale / 2);

    // Create a parameterizable flat button with a fluid fill icon
    return GestureDetector(
      // We wan't to know when this button was tapped, don't bother letting out children know as well
      onTap: _onPressed,
      behavior: HitTestBehavior.opaque,
      child: Container(
        // Alignment container to the circle
        constraints: BoxConstraints.tight(ne),
        alignment: Alignment.center,
        child: Container(
          // This container just draws a circle with a certain radius and offset
          margin: EdgeInsets.all(ne.width / 2 - _radius),
          constraints: BoxConstraints.tight(const Size.square(_radius * 2)),
          decoration: ShapeDecoration(
            color: tabColor,
            shape: const CircleBorder(),
          ),
          transform: Matrix4.translationValues(0, -offset, 0),
          // Create a fluid fill icon that get's filled in with a slight delay to the buttons animation
          child: _icon,
          // FluidFillIcon(
          //     _iconData,
          //     LinearPointCurve(0.25, 1.0).transform(_animation.value),
          //     scaleY,
          // ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(oldWidget) {
    setState(() {
      _selected = widget._selected;
    });
    _startAnimation();
    super.didUpdateWidget(oldWidget);
  }

  void _startAnimation() {
    if (_selected) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }
}
