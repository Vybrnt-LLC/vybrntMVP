import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/getflutter.dart';
import 'package:kt_dart/kt.dart';

import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/organization/application/user_list_bloc/user_list_bloc.dart';

class OrgListScreen extends StatefulWidget {
  final KtList<String> orgIDList;
  final ValueChanged<String> onPush;
  OrgListScreen({
    Key key,
    this.onPush,
    this.orgIDList,
  }) : super(key: key);

  @override
  _OrgListScreenState createState() => _OrgListScreenState();
}

class _OrgListScreenState extends State<OrgListScreen> {
  _buildOrgTile(OrgList org) {
    return ListTile(
      leading: GFAvatar(
        shape: GFAvatarShape.square,
        radius: 20.0,
        backgroundImage: org.profileImageUrl.isEmpty
            ? AssetImage('assets/images/user_placeholder.png')
            : CachedNetworkImageProvider(org.profileImageUrl),
      ),
      title: Text(org.name),
      onTap: () => widget.onPush(org.orgID
          .getOrCrash()), //Navigator.push(context, MaterialPageRoute(builder: (_) => UserProfileScreen(userID: user.userID))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          //centerTitle: true,
          title: Text('My Communities')),
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          bottom: false,
          child: BlocBuilder<UserListBloc, UserListState>(
              builder: (context, state) {
            return ListView.builder(
              itemCount: state.orgs.size,
              itemBuilder: (BuildContext context, int index) {
                //Needs to be updated

                return _buildOrgTile(state.orgs[index]);
              },
            );
          }),
        ),
      ),
    );
  }
}
