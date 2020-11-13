import 'package:flutter/material.dart';

class SliverHomePostDelegate extends SliverPersistentHeaderDelegate {
  SliverHomePostDelegate(
      {this.flexibleSpace, this.postList, this.min, this.max, this.color});
  final Color color;
  final Widget postList;
  final double min;
  final double max;
  final Widget flexibleSpace;
  @override
  double get minExtent {
    if (postList != null) {
      return 400;
    } else {
      return min;
    }
  }

  @override
  double get maxExtent {
    if (postList != null) {
      return 400;
    } else {
      return max;
    }
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (postList != null) {
      return new Container(
        color: color,
        child: postList,
      );
    } else {
      return new Container(
        child: flexibleSpace,
      );
    }
  }

  @override
  bool shouldRebuild(SliverHomePostDelegate oldDelegate) {
    return false;
  }
}
