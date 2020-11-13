import 'package:flutter/material.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate({this.flexibleSpace, this.tabBar, this.min, this.max, this.color});
  final Color color;
  final TabBar tabBar;
  final double min;
  final double max;
  final Widget flexibleSpace;

  @override
  double get minExtent {
    if (tabBar != null) {
      return tabBar.preferredSize.height;
    } else {
      return min;
    }
  }

  @override
  double get maxExtent {
    if (tabBar != null) {
      return tabBar.preferredSize.height;
    } else {
      return max;
    }
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (tabBar != null) {
      return new Container(
        color: color,
      child: tabBar,
    );
    } else {
      return new Container(
      child: flexibleSpace,
    );
    }
  }

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
