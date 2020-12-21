import 'dart:ui';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/authentication/application/auth/bloc/auth_bloc.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/homefeed/application/category_events/category_events_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/application/category_posts/category_posts_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/application/home_events/home_events_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/application/home_posts/home_posts_bloc.dart';
import 'package:vybrnt_mvp/features/homefeed/domain/models/home_categories.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/category_feed.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/home_feed.dart';
import 'package:vybrnt_mvp/features/homefeed/presentation/widgets/sliver_home_app_bar.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/create_fab.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;

class HomeFeedScreen extends StatefulWidget {
  static final String id = 'home_feed_screen';
  final ValueChanged<int> onPush;
  final ValueChanged<int> onPush1;
  final ValueChanged<int> onPushSearch;

  final String currentUserID;

  HomeFeedScreen(
      {Key key,
      this.onPush,
      this.onPush1,
      this.onPushSearch,
      this.currentUserID})
      : super(key: key);

  @override
  _HomeFeedScreenState createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  //final AuthService _auth = AuthService();

  User user;
  // this will control the button clicks and tab changing
  TabController _controller;

  // this will control the animation when a button changes from an off state to an on state
  AnimationController _animationControllerOn;

  // this will control the animation when a button changes from an on state to an off state
  AnimationController _animationControllerOff;

  // this will give the background color values of a button when it changes to an on state
  Animation _colorTweenBackgroundOn;

  // AnimationController _animationTabController;

  // Animation _animation;
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

  Color appBarColor = Colors.black;
  double opacity = 0.5;
  String appBarTitle = HomeCategories.predefinedColors[0].titleImageUrl;

  // // active button's foreground color
  // Color _foregroundOn = Colors.white;
  // Color _foregroundOff = Colors.black;

  // active button's background color
  Color _backgroundOn = Colors.blue;
  Color _backgroundOff = Colors.grey[300];

  // scroll controller for the TabBar
  ScrollController _scrollController = new ScrollController();

  final snackBar = SnackBar(
      content:
          //   Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //   Text('VYBRNT Team: Messaging is still in the shop... Coming soon!'),
          //   Row(
          //     children: [
          //       Text('Yall: '),
          Stack(
              alignment: Alignment.bottomCenter,
              overflow: Overflow.visible,
              children: [
        Container(
          child: Image.asset(
            "assets/images/sssad.png",
            height: 225.0,
            width: 225.0,
            //       ),
            //     ],
            //   ),
            //   SizedBox.shrink()
            // ],
          ),
        ),
        BorderedText(strokeWidth: 1.0, child: Text('Coming Soon!'))
      ]));

  // this will save the keys for each Tab in the Tab Bar, so we can retrieve their position and size for the scroll controller
  List _keys = [];

  // regist if the the button was tapped
  bool _buttonTap = false;

  void initState() {
    super.initState();
    for (int index = 0;
        index < HomeCategories.predefinedColors.length;
        index++) {
      // create a GlobalKey for each Tab
      _keys.add(new GlobalKey());
    }
    // this creates the controller with 6 tabs (in our case)
    _controller = TabController(
        vsync: this, length: HomeCategories.predefinedColors.length);
    // this will execute the function every time there's a swipe animation
    _controller.animation.addListener(_handleTabAnimation);
    // this will execute the function every time the _controller.index value changes
    _controller.addListener(_handleTabChange);

    _animationControllerOff =
        AnimationController(vsync: this, duration: Duration(milliseconds: 75));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOff.value = 1.0;
    // _colorTweenBackgroundOff =
    //     ColorTween(begin: _backgroundOn, end: _backgroundOff)
    //         .animate(_animationControllerOff);
    // _colorTweenForegroundOff =
    //     ColorTween(begin: _foregroundOn, end: _foregroundOff)
    //         .animate(_animationControllerOff);

    _animationControllerOn =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOn.value = 1.0;
    _colorTweenBackgroundOn =
        ColorTween(begin: _backgroundOff, end: _backgroundOn)
            .animate(_animationControllerOn);
    // _animationTabController =
    //     AnimationController(vsync: this, duration: Duration(seconds: 2));

    // _animationTabController.repeat(reverse: true);
    // _animation = Tween(begin: 1.0, end: 0.2).animate(_animationTabController)
    //   ..addListener(() {
    //     setState(() {});
    //   });

    // _colorTweenForegroundOn =
    //     ColorTween(begin: _foregroundOff, end: _foregroundOn)
    //        .animate(_animationControllerOn);
  }

  // runs during the switching tabs animation
  _handleTabAnimation() {
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
  _handleTabChange() {
    // if a button was tapped, change the current index
    if (_buttonTap) _setCurrentIndex(_controller.index);

    // this resets the button tap
    if ((_controller.index == _prevControllerIndex) ||
        (_controller.index == _aniValue.round())) _buttonTap = false;

    // save the previous controller index
    _prevControllerIndex = _controller.index;
  }

  _setCurrentIndex(int index) {
    // if we're actually changing the index
    if (index != _currentIndex) {
      setState(() {
        // change the index
        _currentIndex = index;
      });
      _changeAppBarTitle(index);
      _changeTabColor(index);
      // _getButtonOpacity(index);

      // trigger the button animation
      _triggerAnimation();
      // scroll the TabBar to the correct position (if we have a scrollable bar)
      _scrollTo(index);
    }
  }

  _getButtonOpacity(int index) {
    // setState(() {
    //   appBarColor = HomeCategories.predefinedColors[index].color;
    // });
    return index == _currentIndex ? 1.0 : 0.4;
  }

  _getButtonHightlight(int index) {
    // setState(() {
    //   appBarColor = HomeCategories.predefinedColors[index].color;
    // });
    return index == _currentIndex ? Colors.amberAccent : Colors.transparent;
  }

  _getButtonSize(int index) {
    return index == _currentIndex ? 100.0 : 75.0;
  }

  _changeTabColor(int index) {
    setState(() {
      appBarColor = HomeCategories.predefinedColors[index].color;
    });
  }

  _changeAppBarTitle(int index) {
    setState(() {
      appBarTitle = HomeCategories.predefinedColors[index].titleImageUrl;
    });
  }

  _triggerAnimation() {
    // reset the animations so they're ready to go
    _animationControllerOn.reset();
    _animationControllerOff.reset();
    //_animationTabController.reset();

    // run the animations!
    _animationControllerOn.forward();
    _animationControllerOff.forward();
    //_animationTabController.forward();
  }

  _scrollTo(int index) {
    // get the screen width. This is used to check if we have an element off screen
    double screenWidth = MediaQuery.of(context).size.width;

    // get the button we want to scroll to
    RenderBox renderBox = _keys[index].currentContext.findRenderObject();
    // get its size
    double size = renderBox.size.width;
    // and position
    double position = renderBox.localToGlobal(Offset.zero).dx;

    // this is how much the button is away from the center of the screen and how much we must scroll to get it into place
    double offset = (position + size / 2) - screenWidth / 2;

    // if the button is to the left of the middle
    if (offset < 0) {
      // get the first button
      renderBox = _keys[0].currentContext.findRenderObject();
      // get the position of the first button of the TabBar
      position = renderBox.localToGlobal(Offset.zero).dx;

      // if the offset pulls the first button away from the left side, we limit that movement so the first button is stuck to the left side
      if (position > offset) offset = position;
    } else {
      // if the button is to the right of the middle

      // get the last button
      renderBox = _keys[HomeCategories.predefinedColors.length - 1]
          .currentContext
          .findRenderObject();
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
        duration: new Duration(milliseconds: 150), curve: Curves.easeInOut);
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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    //FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    // final tabColor = Provider.of<TabColor>(context);
    // tabColor.color = appBarColor;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: CreateFAB(),
        backgroundColor: Colors.white,
        body: Container(
          color: appBarColor,
          child: SafeArea(
            //top: false,
            //  overflowRules: OverflowRules.only(bottom: true),
            child: Container(
              color: Colors.white,
              child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        floating: true,
                        expandedHeight: 60.0,
                        actions: <Widget>[
                          IconButton(
                              icon: Icon(Icons.message),
                              onPressed: () =>
                                  // context
                                  //     .bloc<AuthBloc>()
                                  //     .add(AuthEvent.navigateTo(
                                  //         routeName: route.Routes.org,
                                  //         arguments: OrgScreenArguments(
                                  //           orgID:
                                  //               '0951c430-da94-11ea-bbd0-d942609b3bd5',
                                  //         ))))
                                  // context.bloc<AuthBloc>().add(
                                  //     AuthEvent.navigateTo(
                                  //         routeName: route.Routes.eventDetail,
                                  //         arguments: EventScreenArguments(
                                  //             eventID:
                                  //                 '090a6370-db6f-11ea-ab19-c1eeec76c7b6',
                                  //             type: 'user',
                                  //             typeID:
                                  //                 '0K4wKb8kYThCjheIawngoHjVxrz2'))))
                                  // context.bloc<AuthBloc>().add(
                                  //     AuthEvent.navigateTo(
                                  //         routeName: route.Routes.eventDetail,
                                  //         arguments: EventScreenArguments(
                                  //             eventID:
                                  //                 '090a6370-db6f-11ea-ab19-c1eeec76c7b6',
                                  //             type: 'user',
                                  //             typeID:
                                  //                 '0K4wKb8kYThCjheIawngoHjVxrz2'))))
                                  // context.bloc<AuthBloc>().add(
                                  //     AuthEvent.navigateTo(
                                  //         routeName: route.Routes.postDetail,
                                  //         arguments: PostScreenArguments(
                                  //             postID: '7XRLC1DN8ut1j0xc4BJp',
                                  //             type: 'user',
                                  //             typeID:
                                  //                 '4HwvsCmoGHP6xbt0CJ0mlyiQGOp1'))))
                                  // context.navigator
                                  //     .push(route.Routes.messaging)),
                                  Scaffold.of(context).showSnackBar(snackBar)),
                          // () =>
                          //     Router.navigator.pushNamed(Router.messaging)),
                        ],
                        backgroundColor: appBarColor,
                        leading: IconButton(
                            icon: Icon(Icons.menu,
                                color: Provider.of<Color>(context)),
                            onPressed: () {
                              SimpleHiddenDrawerController.of(context).toggle();
                            }),
                        //title: Text(appBarTitle),
                        flexibleSpace: FlexibleSpaceBar(
                            //centerTitle: true,
                            //titlePadding: EdgeInsetsDirectional.only(start: 140, bottom: 16),
                            background: Image.asset(
                          appBarTitle,
                          fit: BoxFit.fitWidth,
                        )),
                        // Image.asset('assets/vybrnt_title_clear.png',
                        //     width: 200, fit: BoxFit.cover),
                      ),
                      SliverPersistentHeader(
                        floating: true,
                        delegate: SliverHomeAppBarDelegate(
                          //Color.fromRGBO(10, 172, 193, 1.0),
                          tabBar: Container(
                              height: 35.0,
                              // this generates our tabs buttons
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  // this gives the TabBar a bounce effect when scrolling farther than it's size
                                  physics: BouncingScrollPhysics(),
                                  addAutomaticKeepAlives: true,
                                  controller: _scrollController,
                                  // make the list horizontal
                                  scrollDirection: Axis.horizontal,
                                  // number of tabs
                                  itemCount:
                                      HomeCategories.predefinedColors.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      key: _keys[index],
                                      height: 25,
                                      child: ButtonTheme(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                          // shape: ContinuousRectangleBorder(
                                          //     side: BorderSide),
                                          child: AnimatedBuilder(
                                            animation: _colorTweenBackgroundOn,
                                            builder: (context, child) =>
                                                Container(
                                              foregroundDecoration:
                                                  BoxDecoration(
                                                // borderRadius: BorderRadius.only(
                                                //   bottomRight:
                                                //       Radius.circular(10),
                                                //   bottomLeft:
                                                //       Radius.circular(10),
                                                // ),
                                                border: Border(
                                                  left: BorderSide(
                                                      width: 5.0,
                                                      color:
                                                          _getButtonHightlight(
                                                              index)),
                                                  bottom: BorderSide(
                                                      width: 5.0,
                                                      color:
                                                          _getButtonHightlight(
                                                              index)),
                                                  right: BorderSide(
                                                      width: 5.0,
                                                      color:
                                                          _getButtonHightlight(
                                                              index)),
                                                  // top: BorderSide(
                                                  //     width: 3.0,
                                                  //     color:
                                                  //         _getButtonHightlight(
                                                  //             index)),
                                                ),
                                              ),
                                              height: _getTabHeight(index),
                                              //width: _getButtonSize(index),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    colorFilter: new ColorFilter
                                                            .mode(
                                                        Colors.black.withOpacity(
                                                            _getButtonOpacity(
                                                                index)),
                                                        BlendMode.dstATop),
                                                    image: AssetImage(
                                                        HomeCategories
                                                            .predefinedColors[
                                                                index]
                                                            .patternImageUrl)),
                                              ),
                                              child: FlatButton(
                                                // get the color of the button's background (dependent of its state)
                                                // color: HomeCategories
                                                //     .predefinedColors[index]
                                                //     .color, //_getBackgroundColor(index),
                                                // make the button a rectangle with round corners
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _buttonTap = true;
                                                    // trigger the controller to change between Tab Views
                                                    _controller
                                                        .animateTo(index);
                                                    // set the current index
                                                    _setCurrentIndex(index);
                                                    // scroll to the tapped button (needed if we tap the active button and it's not on its position)
                                                    _scrollTo(index);

                                                    // _changeTabColor(index);

                                                    // _changeAppBarTitle(index);
                                                  });
                                                },
                                                // child: Row(
                                                //   children: <Widget>[
                                                //     Icon(
                                                //       // get the icon
                                                //       _icons[index],
                                                //       // get the color of the icon (dependent of its state)
                                                //       color: _getForegroundColor(index),
                                                //     ),
                                                //     SizedBox(width: 5),
                                                //     Text(
                                                //       _tabTitles[index],
                                                //       style: TextStyle(
                                                //           color: _getForegroundColor(
                                                //               index)),
                                                //     )
                                                //   ],
                                                // )
                                              ),
                                            ),
                                          )),
                                    );
                                  })),
                        ),
                        pinned: false,
                      ),
                    ];
                  },
                  body: TabBarView(
                    // and it is controlled by the controller
                    controller: _controller,
                    children: <Widget>[
                      // our Tab Views
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<HomePostsBloc>(
                              create: (context) => getIt<HomePostsBloc>()
                                ..add(HomePostsEvent.getData(currentUserID))),
                          BlocProvider<HomeEventsBloc>(
                            create: (context) => getIt<HomeEventsBloc>()
                              ..add(HomeEventsEvent.getData()),
                          )
                        ],
                        child: HomeFeed(
                          key: PageStorageKey('homefeed'),
                          userID: currentUserID,
                        ),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[1].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[1].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[1].title),
                            index: 1,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[1]),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[2].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[2].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[2].title),
                            index: 2,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[2]),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[3].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[3].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[3].title),
                            index: 3,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[3]),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[4].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[4].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[4].title),
                            index: 4,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[4]),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[5].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[5].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[5].title),
                            index: 5,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[5]),
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<CategoryPostsBloc>(
                              create: (context) => getIt<CategoryPostsBloc>()
                                ..add(CategoryPostsEvent.getData(
                                    currentUserID,
                                    HomeCategories
                                        .predefinedColors[6].documentName))),
                          BlocProvider<CategoryEventsBloc>(
                            create: (context) => getIt<CategoryEventsBloc>()
                              ..add(CategoryEventsEvent.getData(
                                  currentUserID,
                                  HomeCategories
                                      .predefinedColors[6].documentName)),
                          )
                        ],
                        child: CategoryFeed(
                            key: PageStorageKey(
                                HomeCategories.predefinedColors[6].title),
                            index: 6,
                            userID: currentUserID,
                            category: HomeCategories.predefinedColors[6]),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }

  double _getTabHeight(int index) {
    return index == _currentIndex ? 35.0 : 25.0;
  }

  @override
  bool get wantKeepAlive => true;
}
