import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';
import 'package:vybrnt_mvp/features/posts/application/create_post/create_post_form_bloc.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key key}) : super(key: key);

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  OrgList currentUser;
  @override
  Widget build(BuildContext context) {
    final currentUserID = Provider.of<UserData>(context).currentUserID;
    return BlocBuilder<CreatePostFormBloc, CreatePostFormState>(
      //condition: (p, c) => p.orgID != c.orgID,
      builder: (context, state) {
        return Container(
            height: 70,
            child: new DropdownButton<OrgList>(
              iconSize: 50,
              value: currentUser,
              hint: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Please Select User or Community'),
              ),
              selectedItemBuilder: (BuildContext context) {
                return state.admins.asList().map<Widget>((OrgList value) {
                  return ListTile(
                    title: Text(value.name),
                    leading: (value.orgID.getOrCrash() == currentUserID)
                        ? CircleAvatar(
                            radius: 20,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? AssetImage(
                                    'assets/images/user_placeholder.png')
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          )
                        : GFAvatar(
                            borderRadius: BorderRadius.circular(15),
                            //backgroundColor: Colors.green[200],
                            shape: GFAvatarShape.square,
                            size: 30.0,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? AssetImage(
                                    'assets/images/user_placeholder.png')
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          ),
                  );
                }).toList();
              },
              //isDense: true,
              isExpanded: true,
              items: state.admins.asList().map((OrgList value) {
                return new DropdownMenuItem<OrgList>(
                  value: value,
                  child: ListTile(
                    title: Text(value.name),
                    leading: (value.orgID.getOrCrash() == currentUserID)
                        ? CircleAvatar(
                            radius: 20,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? AssetImage(
                                    'assets/images/user_placeholder.png')
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          )
                        : GFAvatar(
                            borderRadius: BorderRadius.circular(15),
                            //backgroundColor: Colors.green[200],
                            shape: GFAvatarShape.square,
                            size: 30.0,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? AssetImage(
                                    'assets/images/user_placeholder.png')
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          ),
                  ),
                );
              }).toList(),
              onChanged: (selectedValue) {
                setState(() {
                  currentUser = selectedValue;
                });
                context.bloc<CreatePostFormBloc>().add(
                    CreatePostFormEvent.idChanged(
                        selectedValue.orgID.getOrCrash()));
              },
            ));
      },
    );
  }
}
