import 'package:flutter/material.dart';

class SliverOrgAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverOrgAppBarDelegate({this.flexibleSpace, this.tabBar, this.min, this.max, this.color});
  final Color color;
  final Widget tabBar;
  final double min;
  final double max;
  final Widget flexibleSpace;

  @override
  double get minExtent {
    if (tabBar != null) {
      return 40;
    } else {
      return min;
    }
  }

  @override
  double get maxExtent {
    if (tabBar != null) {
      return 40;
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
  bool shouldRebuild(SliverOrgAppBarDelegate oldDelegate) {
    return false;
  }
}
