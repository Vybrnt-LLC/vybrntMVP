import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/shared/constants.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/search/application/bloc/search_bloc.dart';
import 'package:vybrnt_mvp/features/user/application/fab_bloc/fab_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';
import 'package:vybrnt_mvp/features/user/presentation/widgets/create_fab.dart';

class SearchScreen extends StatefulWidget {
  final String name;
  final String name2;

  const SearchScreen({Key key, this.name, this.name2}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  ScrollController _scrollViewController;

  // TextEditingController _searchOrgController = TextEditingController();
  TabController _controller;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _buildUserTile(UserList user) {
    return ListTile(
      key: ObjectKey(user),
      leading: CircleAvatar(
        radius: 21,
        backgroundColor: stringToColor(user.primaryColor),
        child: CircleAvatar(
          radius: 20.0,
          backgroundImage: user.profileImageUrl.isEmpty
              ? Image.asset('assets/images/user_placeholder.png').image
              : CachedNetworkImageProvider(user.profileImageUrl),
        ),
      ),
      title: Text(user.profileName),
      onTap: () => TabNavigatorProvider.of(context)
          .pushUserProfile(context, userID: user.userID.getOrCrash()),
    );
  }

  Widget _buildOrgTile(OrgList org) {
    return ListTile(
        key: ObjectKey(org),
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: stringToColor(org.primaryColor)),
          ),
          child: GFAvatar(
            shape: GFAvatarShape.square,
            borderRadius: BorderRadius.circular(9),
            radius: 15.0,
            backgroundColor: Colors.white,
            backgroundImage: org.profileImageUrl.isEmpty
                ? Image.asset('assets/images/user_placeholder.png').image
                : CachedNetworkImageProvider(org.profileImageUrl),
          ),
        ),
        title: Text(org.name),
        onTap: () => TabNavigatorProvider.of(context)
            .pushOrgPage(context, orgID: org.orgID.getOrCrash()));
    // });
  }

  void _clearSearch() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _searchController.clear());
    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) => _searchOrgController.clear());
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          return Scaffold(
            floatingActionButton: BlocProvider(
              create: (context) => getIt<FabBloc>(),
              child: CreateFAB(),
            ),
            key: scaffoldKey,
            backgroundColor: Colors.white,
            body: SafeArea(
              top: false,

              //overflowRules: OverflowRules.only(bottom: true),
              child: NestedScrollView(
                controller: _scrollViewController,
                headerSliverBuilder:
                    (BuildContext context, bool boxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      centerTitle: true,

                      pinned: true,
                      floating: true,
                      forceElevated: boxIsScrolled,
                      bottom: TabBar(
                        controller: _controller,
                        tabs: const [
                          Tab(icon: Icon(Icons.group), text: 'Orgs'),
                          Tab(icon: Icon(Icons.person), text: 'Users'),
                        ],
                      ),
                      leading: IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            SimpleHiddenDrawerController.of(context).toggle();
                          }),
                      backgroundColor: Colors.black,
                      //centerTitle: true,
                      title: TextField(
                        controller: _searchController,
                        onSubmitted: (input) {
                          if (input.isNotEmpty) {
                            if (_controller.index == 0) {
                              context
                                  .bloc<SearchBloc>()
                                  .add(SearchEvent.getOrgSearch(input));
                            } else {
                              context
                                  .bloc<SearchBloc>()
                                  .add(SearchEvent.getUserSearch(input));
                            }
                          }
                        },
                        style: GoogleFonts.getFont('Barlow Condensed',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.white),
                        decoration: InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                            border: InputBorder.none,
                            hintText: 'Enter Search',
                            hintStyle: const TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.clear,
                                ),
                                onPressed: () => _clearSearch())),
                      ),
                    ),
                  ];
                },
                body: TabBarView(controller: _controller, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomScrollView(
                        key: const PageStorageKey<String>('org'),
                        slivers: <Widget>[
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                //Needs to be updated

                                return _buildOrgTile(state.orgs[index]);
                              },
                              childCount: state.orgs.size,
                            ),
                          )
                        ]),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomScrollView(
                          key: const PageStorageKey<String>('qwe'),
                          slivers: <Widget>[
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  //Needs to be updated

                                  return _buildUserTile(state.users[index]);
                                },
                                childCount: state.users.size,
                              ),
                            )
                          ])),
                ]),
              ),
            ),
          );
        }));
  }
}
