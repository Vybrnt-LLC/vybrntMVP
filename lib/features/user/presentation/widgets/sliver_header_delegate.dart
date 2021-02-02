import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';

import '../../domain/models/user.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final User user;
  final dynamic button1;
  final dynamic button2;
  final dynamic button3;
  final Color primaryColor;
  final KtList<String> following;
  final int photoCount;
  final KtList<String> followers;
  final KtList<String> orgList;

  SliverHeaderDelegate(
      {this.button3,
      this.orgList,
      this.following,
      this.photoCount,
      this.followers,
      this.primaryColor,
      this.user,
      @required this.expandedHeight,
      this.button1,
      this.button2});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    int followingCount = following.size;
    int followersCount = followers.size;
    int orgCount = orgList.size;
    return Container(
      color: Colors.black, //primaryColor,//Color.fromRGBO(10, 172, 193, 1.0),
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Container(
              color: primaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushFollowersList(context,
                                      userIDList: followers)
                              : getIt<NavigationService>().navigateTo(
                                  Routes.userList,
                                  arguments: UserListScreenArguments(
                                      userIDList: followers,
                                      title: 'Followers')),
                          child: Column(children: [
                            Text('$followersCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Text('Followers',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                          ]),
                        ),
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushFollowingList(context,
                                      userIDList: following)
                              : getIt<NavigationService>().navigateTo(
                                  Routes.userList,
                                  arguments: UserListScreenArguments(
                                      userIDList: following,
                                      title: 'Following')),
                          child: Column(children: [
                            Text('$followingCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Text('Following',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                          ]),
                        ),
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context) != null
                              ? TabNavigatorProvider.of(context)
                                  .pushOrgList(context, orgIDList: orgList)
                              : getIt<NavigationService>().navigateTo(
                                  Routes.orgList,
                                  arguments: OrgListScreenArguments(
                                      orgIDList: orgList)),
                          child: Column(children: [
                            Text('$orgCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Text('Organizations',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button1,

                      button2,

                      button3,

                      //SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
