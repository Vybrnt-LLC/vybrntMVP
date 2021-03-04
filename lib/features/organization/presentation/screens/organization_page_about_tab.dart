import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';

import '../../../../socicon_icons.dart';

class OrganizationPageAboutTab extends StatefulWidget {
  final String name;
  final Organization org;

  const OrganizationPageAboutTab({
    Key key,
    this.name,
    this.org,
  }) : super(key: key);

  @override
  _OrganizationPageAboutTabState createState() =>
      _OrganizationPageAboutTabState();
}

class _OrganizationPageAboutTabState extends State<OrganizationPageAboutTab> {
  SliverPersistentHeader makeHeader(String headerText, int index) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: index != 0
                        ? const BorderSide(width: 0.7)
                        : BorderSide.none),
              ),
              //color: Colors.white,
              child: Center(
                  child: Text(
                headerText,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ))),
        ),
      ),
    );
  }

  Color _stringToColor(String colorString) {
    final int colorValue = int.parse(colorString, radix: 16);
    final Color color = Color(colorValue);
    return color;
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocBuilder<EditOrgBloc, EditOrgState>(builder: (context, state) {
      return CustomScrollView(
        slivers: <Widget>[
          if (widget.org.missionStatement.isNotEmpty)
            makeHeader('Mission', 0)
          else
            const SliverToBoxAdapter(child: SizedBox.shrink()),
          if (widget.org.missionStatement.isNotEmpty)
            SliverPadding(
              padding: const EdgeInsets.all(8),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      widget.org.missionStatement,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          else
            const SliverToBoxAdapter(child: SizedBox.shrink()),
          makeHeader(state.org.adminTitle, 1),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => TabNavigatorProvider.of(context) != null
                        ? TabNavigatorProvider.of(context).pushUserProfile(
                            context,
                            userID: state.users[index].userID.getOrCrash(),
                            currentUserID: currentUserID)
                        : getIt<NavigationService>().navigateTo(Routes.user,
                            arguments: state.users[index].userID.getOrCrash),
                    child: Container(
                        decoration: BoxDecoration(
                            color:
                                _stringToColor(state.users[index].primaryColor),
                            border: Border.all(width: 2.0, color: Colors.white),
                            boxShadow: const [BoxShadow(blurRadius: 4)],
                            borderRadius: BorderRadius.circular(10.0)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 2.0, color: Colors.white),
                              // boxShadow: [
                              //   BoxShadow(blurRadius: 4, color: Colors.black)
                              // ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 115,
                                    width: 115,
                                    child: state.users[index].profileImageUrl
                                            .isEmpty
                                        ? Image.asset(
                                            'assets/images/user_placeholder.png')
                                        : Image(
                                            image: CachedNetworkImageProvider(
                                                state.users[index]
                                                    .profileImageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),
                                Text(state.eboard[index].position,
                                    style: const TextStyle(fontSize: 10)),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(state.users[index].profileName,
                                    style: const TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        )),
                  );
                },
                childCount: state.users.size,
              ),
            ),
          ),
          makeHeader('Contact', 2),
          SliverPadding(
            padding: const EdgeInsets.all(4),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.org.email.isNotEmpty)
                    const Text(
                      'Organization Email:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.org.email.isNotEmpty)
                    const SizedBox(height: 5)
                  else
                    const SizedBox.shrink(),
                  if (widget.org.email.isNotEmpty)
                    Text(
                      widget.org.email,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.org.email.isNotEmpty)
                    const SizedBox(
                      height: 20,
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.org.officeLocation.isNotEmpty)
                    const Text(
                      'Office Location:',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.org.officeLocation.isNotEmpty)
                    const SizedBox(height: 5)
                  else
                    const SizedBox.shrink(),
                  if (widget.org.officeLocation.isNotEmpty)
                    Text(
                      widget.org.officeLocation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    )
                  else
                    const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (widget.org.instagramURL.isNotEmpty)
                        IconButton(
                            icon: const Icon(Socicon.instagram),
                            onPressed: () => launch(widget.org.instagramURL))
                      else
                        null,
                      if (widget.org.twitterURL.isNotEmpty)
                        IconButton(
                            icon: const Icon(Socicon.twitter),
                            onPressed: () => launch(widget.org.twitterURL))
                      else
                        null,
                      if (widget.org.facebookURL.isNotEmpty)
                        IconButton(
                            icon: const Icon(Socicon.facebook),
                            onPressed: () => launch(widget.org.facebookURL))
                      else
                        null,
                      if (widget.org.linkedInURL.isNotEmpty)
                        IconButton(
                            icon: const Icon(Socicon.linkedin),
                            onPressed: () => launch(widget.org.linkedInURL))
                      else
                        null,
                      if (widget.org.websiteURL.isNotEmpty)
                        IconButton(
                            icon: const Icon(Icons.web),
                            onPressed: () => launch(widget.org.websiteURL))
                      else
                        null,
                    ],
                  )
                ],
              ),
            ),
          ),
          if (state.faqs.isEmpty())
            const SliverToBoxAdapter(child: SizedBox.shrink())
          else
            makeHeader('FAQ', 3),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isEven
                      ? _stringToColor(state.org.primaryColor)
                      : _stringToColor(state.org.secondaryColor),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(state.faqs[index].question,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(state.faqs[index].answer,
                                style: const TextStyle(fontSize: 20.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: state.faqs.size,
            ),
          ),
        ],
      );
    });
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
