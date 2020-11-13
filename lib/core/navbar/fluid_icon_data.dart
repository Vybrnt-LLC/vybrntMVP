import 'dart:ui' as ui;
import 'dart:math' as math;

import 'package:flutter/material.dart';

class FluidFillIconData {
  final List<ui.Path> paths;
  FluidFillIconData(this.paths);
}

class FluidFillIcons {
  static final organizations = FluidFillIconData([
     ui.Path()..moveTo(-15, -14)..lineTo(15, -14)..lineTo(0, 9)..close(),
    // ui.Path()..moveTo(0, -8)..lineTo(15, -8),
    // ui.Path()..moveTo(7.5, 0)..lineTo(-7.5, 0),
    // ui.Path()..moveTo(-15, 8)..lineTo(0, 8),
  ]);
  static final messages = FluidFillIconData([
    ui.Path()..addRRect(RRect.fromLTRBXY(-12, -12, -2, -2, 2, 2)),
    ui.Path()..addRRect(RRect.fromLTRBXY(2, -12, 12, -2, 2, 2)),
    ui.Path()..addRRect(RRect.fromLTRBXY(-12, 2, -2, 12, 2, 2)),
    ui.Path()..addRRect(RRect.fromLTRBXY(2, 2, 12, 12, 2, 2)),
  ]);
  static final arrow = FluidFillIconData([
    ui.Path()..moveTo(-10, 6)..lineTo(10, 6)..moveTo(10, 6)..lineTo(3, 0)..moveTo(10, 6)..lineTo(3, 12),
    ui.Path()..moveTo(10, -6)..lineTo(-10, -6)..moveTo(-10, -6)..lineTo(-3, 0)..moveTo(-10, -6)..lineTo(-3, -12),
  ]);
  static final user = FluidFillIconData([
    ui.Path()..arcTo(Rect.fromLTRB(-5, -16, 5, -6), 0, 1.9 * math.pi, true),
    ui.Path()..arcTo(Rect.fromLTRB(-10, 0, 10, 20), 0, -1.0 * math.pi, true),
  ]);
  static final home = FluidFillIconData([
    ui.Path()..addRRect(RRect.fromLTRBXY(-10, -2, 10, 10, 2, 2)),
    ui.Path()..moveTo(-14, -2)..lineTo(14, -2)..lineTo(0, -16)..close(),
  ]);
  static final calendar = FluidFillIconData([
    ui.Path()..addRRect(RRect.fromLTRBXY(-12, -14, 12, 10, 2, 2)),
    ui.Path()..addRRect(RRect.fromLTRBXY(-12, -6, 12, 10, 2, 2)),
  ]);
  
}

