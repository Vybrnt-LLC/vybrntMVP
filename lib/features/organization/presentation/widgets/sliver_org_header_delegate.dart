import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';

class SliverOrgHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Organization org;
  int postCount;
  int memberCount;
  int photoCount;
  final dynamic button1;
  final dynamic button2;
  final dynamic button3;
  final Color primaryColor;

  KtList userIDList;

  SliverOrgHeaderDelegate(
      {this.button3,
      this.userIDList,
      this.postCount,
      this.memberCount,
      this.photoCount,
      this.primaryColor,
      this.org,
      @required this.expandedHeight,
      this.button1,
      this.button2});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
                        Column(children: [
                          Text('$postCount',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          Text('Posts',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ]),
                        GestureDetector(
                          onTap: () => TabNavigatorProvider.of(context)
                              .pushUserList(context, userIDList: userIDList),
                          child: Column(children: [
                            Text('$memberCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            Text('Members',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))
                          ]),
                        ),
                        Column(children: [
                          Text('$photoCount',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          Text('Photos',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //             Container(
                      //               decoration: BoxDecoration(

                      //   borderRadius: BorderRadius.circular(5),
                      //   border: Border.all(color: Colors.white),
                      // ),
                      //               child: GFAvatar(
                      //                 shape: GFAvatarShape.square,
                      //                 borderRadius: BorderRadius.circular(10),
                      //                 radius: 45.0,
                      //                 backgroundColor: Colors.white,
                      //                 backgroundImage: org.profileImageUrl.isEmpty
                      //                     ? AssetImage('assets/images/user_placeholder.png')
                      //                     : CachedNetworkImageProvider(org.profileImageUrl),
                      //               ),
                      //             ),

                      button2,

                      button1,

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
