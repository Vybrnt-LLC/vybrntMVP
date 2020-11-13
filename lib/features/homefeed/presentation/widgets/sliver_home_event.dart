import 'package:flutter/material.dart';

class SliverHomeEventDelegate extends SliverPersistentHeaderDelegate {
  SliverHomeEventDelegate(
      {this.flexibleSpace, this.eventList, this.min, this.max, this.color});
  final Color color;
  final Widget eventList;
  final double min;
  final double max;
  final Widget flexibleSpace;
  @override
  double get minExtent {
    if (eventList != null) {
      return 175;
    } else {
      return min;
    }
  }

  @override
  double get maxExtent {
    if (eventList != null) {
      return 175;
    } else {
      return max;
    }
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (eventList != null) {
      return new Container(
        color: color,
        child: eventList,
      );
    } else {
      return new Container(
        child: flexibleSpace,
      );
    }
  }

  @override
  bool shouldRebuild(SliverHomeEventDelegate oldDelegate) {
    return false;
  }
}
