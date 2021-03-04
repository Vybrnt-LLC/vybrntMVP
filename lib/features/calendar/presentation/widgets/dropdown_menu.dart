import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/shape/gf_avatar_shape.dart';
import 'package:provider/provider.dart';
import 'package:vybrnt_mvp/features/authentication/domain/models/user_data_model.dart';
import 'package:vybrnt_mvp/features/calendar/application/create_event_bloc/create_event_bloc.dart';
import 'package:vybrnt_mvp/features/calendar/domain/models/org_list_model.dart';

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
    // = OrgList(orgID: UniqueId.fromUniqueString(Provider.of<UserData>(context, listen: false).currentUserID), profileImageUrl: 'https://img.icons8.com/pastel-glyph/2x/person-male.png', profileName: 'Please select' );
    return BlocBuilder<CreateEventBloc, CreateEventState>(
      //condition: (p, c) => p.orgID != c.orgID,
      builder: (context, state) {
        //currentUser = state.admins[(state.admins.asList().length-1)];
        return Container(
            height: 70,
            child: DropdownButton<OrgList>(
              iconSize: 50,
              value: currentUser,
              hint: const Padding(
                padding: EdgeInsets.all(8.0),
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
                                ? Image.asset(
                                        'assets/images/user_placeholder.png')
                                    .image
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          )
                        : GFAvatar(
                            borderRadius: BorderRadius.circular(15),
                            //backgroundColor: Colors.green[200],
                            shape: GFAvatarShape.square,
                            size: 30.0,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? Image.asset(
                                        'assets/images/user_placeholder.png')
                                    .image
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          ),
                  );
                }).toList();
              },
              //isDense: true,
              isExpanded: true,
              items: state.admins.asList().map((OrgList value) {
                return DropdownMenuItem<OrgList>(
                  value: value,
                  child: ListTile(
                    title: Text(value.name),
                    leading: (value.orgID.getOrCrash() == currentUserID)
                        ? CircleAvatar(
                            radius: 20,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? Image.asset(
                                        'assets/images/user_placeholder.png')
                                    .image
                                : CachedNetworkImageProvider(
                                    value.profileImageUrl),
                          )
                        : GFAvatar(
                            borderRadius: BorderRadius.circular(15),
                            //backgroundColor: Colors.green[200],
                            shape: GFAvatarShape.square,
                            size: 30.0,
                            backgroundImage: value.profileImageUrl.isEmpty
                                ? Image.asset(
                                        'assets/images/user_placeholder.png')
                                    .image
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
                context.bloc<CreateEventBloc>().add(CreateEventEvent.idChanged(
                    selectedValue.orgID.getOrCrash(), currentUserID));
              },
            ));
      },
    );
  }
}
