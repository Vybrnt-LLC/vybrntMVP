import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';

import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/presentation/widgets/event_detail_image.dart';
import 'package:vybrnt_mvp/features/organization/application/bloc/org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:vybrnt_mvp/features/organization/application/event_list_bloc/event_list_bloc.dart';
import 'package:vybrnt_mvp/features/organization/domain/models/organization.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_about_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_event_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_feed_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/screens/organization_page_photos_tab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/widgets/create_photo_fab.dart';
import 'package:vybrnt_mvp/features/organization/presentation/widgets/sliver_org_appbar_delegate.dart';
import 'package:vybrnt_mvp/features/organization/presentation/widgets/sliver_org_header_delegate.dart';
import 'package:vybrnt_mvp/features/posts/application/post_watcher/post_watcher_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';

import 'package:vybrnt_mvp/features/user/presentation/widgets/create_fab.dart';

class BuildOrg extends StatefulWidget {
  final Organization org;

  const BuildOrg({
    Key key,
    this.org,
  }) : super(key: key);
  @override
  _BuildOrgState createState() => _BuildOrgState();
}

class _BuildOrgState extends State<BuildOrg> with TickerProviderStateMixin {
  final snackBar = SnackBar(
      content: Image.asset(
    "assets/gifs/no_messaging.gif.GIF",
    height: 125.0,
    width: 125.0,
  ));

  final snackBarBlock =
      const SnackBar(content: Text('This org has been blocked'));

  final snackBarUnblocked =
      const SnackBar(content: Text('You have successfully unblocked this org'));
  final snackBarNotify = const SnackBar(
      content:
          Text('Must be following the organization to be notified of updates'));
  // TickerProviderStateMixin allows the fade out/fade in animation when changing the active button

  // this will control the button clicks and tab changing
  TabController _controller;

  // this will control the animation when a button changes from an off state to an on state
  AnimationController _animationControllerOn;

  // this will control the animation when a button changes from an on state to an off state
  AnimationController _animationControllerOff;

  // this will give the background color values of a button when it changes to an on state
  Animation _colorTweenBackgroundOn;
  // Animation _colorTweenBackgroundOff;

  // // this will give the foreground color values of a button when it changes to an on state
  // Animation _colorTweenForegroundOn;
  // Animation _colorTweenForegroundOff;

  // when swiping, the _controller.index value only changes after the animation, therefore, we need this to trigger the animations and save the current index
  int _currentIndex = 0;

  // saves the previous active tab
  int _prevControllerIndex = 0;

  // saves the value of the tab animation. For example, if one is between the 1st and the 2nd tab, this value will be 0.5
  double _aniValue = 0.0;

  // saves the previous value of the tab animation. It's used to figure the direction of the animation
  double _prevAniValue = 0.0;

  // these will be our tab icons. You can use whatever you like for the content of your buttons
  final List _icons = [
    Icons.whatshot,
    Icons.library_books,
    Icons.event,
    Icons.photo_library,
  ];

  final List _tabTitles = [
    'Posts',
    'About',
    'Events',
    'Photos',
  ];

  // active button's foreground color

  // active button's background color
  final Color _backgroundOn = Colors.blue;
  final Color _backgroundOff = Colors.grey[300];

  // scroll controller for the TabBar
  final ScrollController _scrollController = ScrollController();

  // this will save the keys for each Tab in the Tab Bar, so we can retrieve their position and size for the scroll controller
  // ignore: prefer_final_fields
  List<GlobalKey> _keys = [];

  // regist if the the button was tapped
  bool _buttonTap = false;

  @override
  void initState() {
    super.initState();

    for (int index = 0; index < _icons.length; index++) {
      // create a GlobalKey for each Tab
      _keys.add(GlobalKey());
    }
    // this creates the controller with 6 tabs (in our case)
    _controller = TabController(vsync: this, length: _icons.length);
    // this will execute the function every time there's a swipe animation
    _controller.animation.addListener(_handleTabAnimation);
    // this will execute the function every time the _controller.index value changes
    _controller.addListener(_handleTabChange);

    _animationControllerOff = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 75));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOff.value = 1.0;
    // _colorTweenBackgroundOff =
    //     ColorTween(begin: _backgroundOn, end: _backgroundOff)
    //         .animate(_animationControllerOff);
    // _colorTweenForegroundOff =
    //     ColorTween(begin: _foregroundOn, end: _foregroundOff)
    //         .animate(_animationControllerOff);

    _animationControllerOn = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOn.value = 1.0;
    _colorTweenBackgroundOn =
        ColorTween(begin: _backgroundOff, end: _backgroundOn)
            .animate(_animationControllerOn);
    // _colorTweenForegroundOn =
    //     ColorTween(begin: _foregroundOff, end: _foregroundOn)
    //         .animate(_animationControllerOn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID =
        Provider.of<UserData>(context, listen: false).currentUserID;
    FlutterStatusbarcolor.setNavigationBarColor(Colors.black);
    return BlocBuilder<OrgBloc, OrgState>(builder: (context, state) {
      final shareLink = state.shareLink;
      final name = widget.org.name;
      final String shareMessage =
          "Check out $name's profile on Vybrnt! \n$shareLink";
      return Scaffold(
        floatingActionButton: state.isAdmin
            ? BlocProvider(
                create: (context) => getIt<FabBloc>(),
                child: CreatePhotoFAB(
                    orgID: widget.org.orgID.getOrCrash(), isOrg: true),
              )
            : BlocProvider(
                create: (context) => getIt<FabBloc>(),
                child: CreateFAB(),
              ),
        backgroundColor: Colors.white,
        body: SafeArea(
          top: false,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    actions: [
                      IconButton(
                          icon: const FaIcon(FontAwesomeIcons.share,
                              color: Colors.white),
                          onPressed: () {
                            final RenderBox box =
                                context.findRenderObject() as RenderBox;
                            Share.share(shareMessage,
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size);
                          }),
                      FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width * 0.50,
                        blurSize: 5.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        duration: const Duration(milliseconds: 100),
                        animateMenuItems: true,
                        blurBackgroundColor: Colors.black54,
                        menuOffset:
                            10.0, // Offset value to show menuItem from the selected item
                        bottomOffsetHeight:
                            80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                        menuItems: <FocusedMenuItem>[
                          FocusedMenuItem(
                              title: const Text("Report"),
                              trailingIcon: const Icon(Icons.flag),
                              onPressed: () =>
                                  TabNavigatorProvider.of(context) != null
                                      ? TabNavigatorProvider.of(context)
                                          .pushReport(
                                              context,
                                              currentUserID: currentUserID,
                                              contentID: '',
                                              contentType: '',
                                              ownerID:
                                                  widget.org.orgID.getOrCrash(),
                                              ownerType: 'org')
                                      : getIt<NavigationService>().navigateTo(
                                          Routes.report,
                                          arguments: ReportScreenArguments(
                                              currentUserID: currentUserID,
                                              ownerID:
                                                  widget.org.orgID.getOrCrash(),
                                              ownerType: 'org'))),
                        ],
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                    //elevation: 0,
                    //centerTitle: false,
                    backgroundColor: stringToColor(widget.org.primaryColor),
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    expandedHeight: 250.0,

                    forceElevated: innerBoxIsScrolled,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: false,
                        titlePadding: const EdgeInsetsDirectional.only(
                            start: 65, bottom: 16),
                        title: Container(
                          width: 200,
                          //height: 250,
                          //alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              OpenContainer<bool>(
                                  closedColor: const Color(0x00000000),
                                  openBuilder: (BuildContext _,
                                      VoidCallback openContainer) {
                                    return EventDetailImage(
                                        widget.org.profileImageUrl);
                                  },
                                  closedShape: const RoundedRectangleBorder(),
                                  closedElevation: 0.0,
                                  closedBuilder: (BuildContext _,
                                      VoidCallback openContainer) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: stringToColor(
                                                widget.org.primaryColor)),
                                      ),
                                      child: GFAvatar(
                                        shape: GFAvatarShape.square,
                                        borderRadius: BorderRadius.circular(9),
                                        radius: 15.0,
                                        backgroundColor: Colors.white,
                                        backgroundImage: widget
                                                .org.profileImageUrl.isEmpty
                                            ? Image.asset(
                                                    'assets/images/user_placeholder.png')
                                                .image
                                            : CachedNetworkImageProvider(
                                                widget.org.profileImageUrl),
                                      ),
                                    );
                                  }),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 150,
                                height: 30,
                                child: AutoSizeText(widget.org.name,
                                    //textAlign: TextAlign.justify,
                                    maxLines: 2,
                                    //softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: Theme.of(context)
                                        .appBarTheme
                                        .textTheme
                                        .headline1
                                        .copyWith(fontSize: 24)),
                              ),
                            ],
                          ),
                        ),
                        background: widget.org.bannerImageUrl.isEmpty
                            ? Image.asset(
                                'assets/images/Vybrnt_stockbanner.png',
                                fit: BoxFit.cover,
                              )
                            : Image(
                                image: CachedNetworkImageProvider(
                                    widget.org.bannerImageUrl),
                                fit: BoxFit.cover,
                              )),
                  ),
                  // _displayButton(user),
                  SliverPersistentHeader(
                    delegate: SliverOrgHeaderDelegate(
                        primaryColor: stringToColor(widget.org.primaryColor),
                        userIDList: state.userIDList,
                        expandedHeight: 150,
                        org: widget.org,
                        postCount: state.postCount,
                        memberCount: state.memberCount,
                        photoCount: state.photoCount,
                        button3: state.isNotified
                            ? FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.grey[200],
                                onPressed: () => state.isFollowing
                                    ? context.bloc<OrgBloc>().add(
                                        OrgEvent.removeUserFromNotify(
                                            widget.org.orgID.getOrCrash()))
                                    : Scaffold.of(context)
                                        .showSnackBar(snackBarNotify),
                                child: const Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ))
                            : FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: stringToColor(widget.org.secondaryColor),
                                onPressed: () => state.isFollowing
                                    ? context.bloc<OrgBloc>().add(
                                        OrgEvent.addUserToNotify(
                                            widget.org.orgID.getOrCrash()))
                                    : Scaffold.of(context)
                                        .showSnackBar(snackBarNotify),
                                child: const Icon(
                                  Icons.notifications_none,
                                  color: Colors.white,
                                )),
                        //primaryColor: _primaryColor,
                        button1: _displayButton(stringToColor(widget.org.secondaryColor)),
                        button2: state.isAdmin
                            ? Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 100.0,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  onPressed: () => TabNavigatorProvider.of(
                                              context) !=
                                          null
                                      ? TabNavigatorProvider.of(context)
                                          .pushEditOrgPage(context,
                                              org: widget.org)
                                      : getIt<NavigationService>().navigateTo(
                                          Routes.editOrganizationPageScreen,
                                          arguments:
                                              EditOrganizationPageScreenArguments(
                                                  org: widget.org)),
                                  color:
                                      stringToColor(widget.org.secondaryColor),
                                  textColor: Colors.white,
                                  child: const Text(
                                    'Edit Profile',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                              )
                            : Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  //border: Border.all(color: Colors.white),
                                ),
                                width: 100.0,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  onPressed: () => state.isFollowing
                                      ? context.bloc<OrgBloc>().add(
                                          OrgEvent.removeFollower(
                                              widget.org.orgID.getOrCrash(),
                                              currentUserID))
                                      : context.bloc<OrgBloc>().add(
                                          OrgEvent.addFollower(
                                              widget.org.orgID.getOrCrash(),
                                              currentUserID)),
                                  color: state.isFollowing
                                      ? Colors.grey[200]
                                      : stringToColor(
                                          widget.org.secondaryColor),
                                  textColor: state.isFollowing
                                      ? Colors.black
                                      : Colors.white,
                                  child: Text(
                                    state.isFollowing ? 'Leave' : 'Join',
                                    style: const TextStyle(fontSize: 13.0),
                                  ),
                                ),
                              )),
                  ),
                  SliverPersistentHeader(
                    delegate: SliverOrgAppBarDelegate(
                      color: Colors.white, //Color.fromRGBO(10, 172, 193, 1.0),
                      tabBar: Container(
                          height: 49.0,
                          // this generates our tabs buttons
                          child: ListView.builder(
                              // this gives the TabBar a bounce effect when scrolling farther than it's size
                              physics: const BouncingScrollPhysics(),
                              controller: _scrollController,
                              // make the list horizontal
                              scrollDirection: Axis.horizontal,
                              // number of tabs
                              itemCount: _icons.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    // each button's key
                                    key: _keys[index],
                                    // padding for the buttons
                                    padding: const EdgeInsets.all(6.0),
                                    child: ButtonTheme(
                                        child: AnimatedBuilder(
                                      animation: _colorTweenBackgroundOn,
                                      builder: (context, child) => FlatButton(
                                          // get the color of the button's background (dependent of its state)
                                          // color: _getBackgroundColor(index),
                                          // // make the button a rectangle with round corners
                                          // shape: RoundedRectangleBorder(
                                          //     borderRadius:
                                          //         new BorderRadius.circular(
                                          //             7.0)),
                                          onPressed: () {
                                            setState(() {
                                              _buttonTap = true;
                                              // trigger the controller to change between Tab Views
                                              _controller.animateTo(index);
                                              // set the current index
                                              _setCurrentIndex(index);
                                              // scroll to the tapped button (needed if we tap the active button and it's not on its position)
                                              _scrollTo(index);
                                            });
                                          },
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: _getBottomLineWidth(
                                                        index),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 0, 4),
                                                  child: Text(
                                                    _tabTitles[index]
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize:
                                                            _getFontSize(index),
                                                        fontWeight:
                                                            _getFontWeight(
                                                                index),
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                    )));
                              })),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                // and it is controlled by the controller
                controller: _controller,
                children: <Widget>[
                  // our Tab Views
                  BlocProvider<PostWatcherBloc>(
                    create: (context) => getIt<PostWatcherBloc>()
                      ..add(PostWatcherEvent.getData(
                          widget.org.orgID.getOrCrash(), true)),
                    child: OrganizationPageFeedTab(
                      orgID: widget.org.orgID.getOrCrash(),
                      org: widget.org,
                      // onPushPostDetail: widget.onPushPostDetail,
                    ),
                  ),
                  BlocProvider<EditOrgBloc>(
                    create: (context) => getIt<EditOrgBloc>()
                      ..add(EditOrgEvent.getData(widget.org)),
                    child: OrganizationPageAboutTab(
                      org: widget.org,
                    ),
                  ),
                  BlocProvider<EventListBloc>(
                      create: (context) => getIt<EventListBloc>()
                        ..add(EventListEvent.getData(
                            widget.org.orgID.getOrCrash(), true)),
                      child: OrganizationPageEventTab(
                        org: widget.org,
                        isAdmin: state.isAdmin,
                      )),
                  OrganizationPagePhotosTab(
                    org: widget.org,
                  ),
                ],
              )),
        ),
      );
    });
  }

  void _handleTabAnimation() {
    // gets the value of the animation. For example, if one is between the 1st and the 2nd tab, this value will be 0.5
    _aniValue = _controller.animation.value;

    // if the button wasn't pressed, which means the user is swiping, and the amount swipped is less than 1 (this means that we're swiping through neighbor Tab Views)
    if (!_buttonTap && ((_aniValue - _prevAniValue).abs() < 1)) {
      // set the current tab index
      _setCurrentIndex(_aniValue.round());
    }

    // save the previous Animation Value
    _prevAniValue = _aniValue;
  }

  // runs when the displayed tab changes
  void _handleTabChange() {
    // if a button was tapped, change the current index
    if (_buttonTap) _setCurrentIndex(_controller.index);

    // this resets the button tap
    if ((_controller.index == _prevControllerIndex) ||
        (_controller.index == _aniValue.round())) _buttonTap = false;

    // save the previous controller index
    _prevControllerIndex = _controller.index;
  }

  void _setCurrentIndex(int index) {
    // if we're actually changing the index
    if (index != _currentIndex) {
      setState(() {
        // change the index
        _currentIndex = index;
      });

      // trigger the button animation
      _triggerAnimation();
      // scroll the TabBar to the correct position (if we have a scrollable bar)
      _scrollTo(index);
    }
  }

  void _triggerAnimation() {
    // reset the animations so they're ready to go
    _animationControllerOn.reset();
    _animationControllerOff.reset();

    // run the animations!
    _animationControllerOn.forward();
    _animationControllerOff.forward();
  }

  void _scrollTo(int index) {
    // get the screen width. This is used to check if we have an element off screen
    double screenWidth = MediaQuery.of(context).size.width;

    // get the button we want to scroll to
    RenderBox renderBox =
        _keys[index].currentContext.findRenderObject() as RenderBox;
    // get its size
    double size = renderBox.size.width;
    // and position
    double position = renderBox.localToGlobal(Offset.zero).dx;

    // this is how much the button is away from the center of the screen and how much we must scroll to get it into place
    double offset = (position + size / 2) - screenWidth / 2;

    // if the button is to the left of the middle
    if (offset < 0) {
      // get the first button
      renderBox = _keys[0].currentContext.findRenderObject() as RenderBox;
      // get the position of the first button of the TabBar
      position = renderBox.localToGlobal(Offset.zero).dx;

      // if the offset pulls the first button away from the left side, we limit that movement so the first button is stuck to the left side
      if (position > offset) offset = position;
    } else {
      // if the button is to the right of the middle

      // get the last button
      renderBox = _keys[_icons.length - 1].currentContext.findRenderObject()
          as RenderBox;
      // get its position
      position = renderBox.localToGlobal(Offset.zero).dx;
      // and size
      size = renderBox.size.width;

      // if the last button doesn't reach the right side, use it's right side as the limit of the screen for the TabBar
      if (position + size < screenWidth) screenWidth = position + size;

      // if the offset pulls the last button away from the right side limit, we reduce that movement so the last button is stuck to the right side limit
      if (position + size - offset < screenWidth) {
        offset = position + size - screenWidth;
      }
    }

    // scroll the calculated ammount
    _scrollController.animateTo(offset + _scrollController.offset,
        duration: const Duration(milliseconds: 150), curve: Curves.easeInOut);
  }

  // _getBackgroundColor(int index) {
  //   if (index == _currentIndex) {
  //     // if it's active button
  //     return _colorTweenBackgroundOn.value;
  //   } else if (index == _prevControllerIndex) {
  //     // if it's the previous active button
  //     return _colorTweenBackgroundOff.value;
  //   } else {
  //     // if the button is inactive
  //     return _backgroundOff;
  //   }
  // }

  // _getForegroundColor(int index) {
  //   // the same as the above
  //   if (index == _currentIndex) {
  //     return _colorTweenForegroundOn.value;
  //   } else if (index == _prevControllerIndex) {
  //     return _colorTweenForegroundOff.value;
  //   } else {
  //     return _foregroundOff;
  //   }
  // }

  FontWeight _getFontWeight(int index) {
    // the same as the above
    if (index == _currentIndex) {
      return FontWeight.bold;
    } else {
      return FontWeight.normal;
    }
  }

  double _getFontSize(int index) {
    // the same as the above
    if (index == _currentIndex) {
      return 15.0;
    } else {
      return 12.0;
    }
  }

  BorderSide _getBottomLineWidth(int index) {
    // the same as the above
    if (index == _currentIndex) {
      return const BorderSide();
    } else {
      return BorderSide.none;
    }
  }

  Widget _displayButton(Color color) {
    return Container(
      height: 35,
      // decoration: BoxDecoration(
      //   //borderRadius: BorderRadius.circular(5),
      //   border: Border.all(color: Colors.white),
      // ),
      width: 100.0,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () => Scaffold.of(context)
            .showSnackBar(snackBar), //widget.onPushEdit(_profileOrg),
        color: color,
        textColor: Colors.white,
        child: const Text(
          'Messaging',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
    );
  }

  double _getTextSize(String name) {
    if (name.length > 20) {
      return 8.0;
    } else if (name.length > 13) {
      return 15.0;
    } else {
      return 20.0;
    }
  }
}
