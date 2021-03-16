import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/core/injection.dart';
import 'package:vybrnt_mvp/core/navbar/tab_navigator_provider.dart';
import 'package:vybrnt_mvp/core/routes/navigation_service.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/organization/application/user_list_bloc/user_list_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

class UserListScreen extends StatefulWidget {
  final KtList<String> userIDList;
  final String title;

  const UserListScreen({Key key, this.userIDList, this.title})
      : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  ListTile _buildUserTile(UserList user, String currentUserID) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: user.profileImageUrl.isEmpty
            ? Image.asset('assets/images/user_placeholder.png').image
            : CachedNetworkImageProvider(user.profileImageUrl),
      ),
      title: user.profileName.isNotEmpty
          ? Text(user.profileName)
          : const Text('Anonymous User'),
      onTap: () => (currentUserID == user.userID.getOrCrash())
          ? {}
          : TabNavigatorProvider.of(context) != null
              ? TabNavigatorProvider.of(context)
                  .pushUserProfile(context, userID: user.userID.getOrCrash())
              : getIt<NavigationService>().navigateTo(Routes.user,
                  arguments: UserScreenArguments(
                      userID: user.userID
                          .getOrCrash())), //Navigator.push(context, MaterialPageRoute(builder: (_) => UserProfileScreen(userID: user.userID))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocProvider<UserListBloc>(
      create: (context) => getIt<UserListBloc>()
        ..add(UserListEvent.getUserData(widget.userIDList)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          //centerTitle: true,
          title: Text(widget.title),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<UserListBloc, UserListState>(
              builder: (context, state) {
            return ListView.builder(
              itemCount: state.users.size,
              itemBuilder: (BuildContext context, int index) {
                //Needs to be updated

                return _buildUserTile(state.users[index], currentUserID);
              },
            );
          }),
        ),
      ),
    );
  }
}
