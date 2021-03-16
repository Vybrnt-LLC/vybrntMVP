import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:vybrnt_mvp/features/organization/application/edit_org_bloc/edit_org_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user_list_model.dart';

class EditOrgEboardTab extends StatefulWidget {
  final EditOrgState state;
  final String name;

  const EditOrgEboardTab({Key key, this.state, this.name}) : super(key: key);
  @override
  _EditOrgEboardTabState createState() => _EditOrgEboardTabState();
}

class _EditOrgEboardTabState extends State<EditOrgEboardTab> {
  final _formKey = GlobalKey<FormState>();
  final snackBar = const SnackBar(content: Text('New Admin Saved!'));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: CustomScrollView(
          key: PageStorageKey<String>(widget.name),
          slivers: <Widget>[
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Manage Administrative Members'),
            )),
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Each admin will be able to edit this profile, as well as create posts and events for your members',
                style: TextStyle(fontSize: 10),
              ),
            )),
            SliverToBoxAdapter(
              child: TextFormField(
                style: const TextStyle(fontSize: 18.0),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.book,
                    size: 30.0,
                  ),
                  labelText: 'Position',
                ),
                validator: (input) =>
                    input.trim().isEmpty ? 'Please enter a position' : null,
                onChanged: (input) => context
                    .bloc<EditOrgBloc>()
                    .add(EditOrgEvent.positionChanged(input)),
              ),
            ),
            //SizedBox(height: 20),
            SliverToBoxAdapter(
              child: BlocBuilder<EditOrgBloc, EditOrgState>(
                  builder: (context, state) {
                return DropdownSearch<UserList>(
                  popupItemBuilder: (context, user, name) {
                    return ListTile(
                        leading: CircleAvatar(
                          //backgroundColor: userColor,
                          radius: 25.0,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: user.profileImageUrl.isEmpty
                                ? Image.asset(
                                        'assets/images/user_placeholder.png')
                                    .image
                                : CachedNetworkImageProvider(
                                    user.profileImageUrl),
                          ),
                        ),
                        title: Text(user.profileName));
                  },
                  isFilteredOnline: true,
                  mode: Mode.BOTTOM_SHEET,
                  showSearchBox: true,
                  showClearButton: true,
                  //showSelectedItem: true,
                  //showSelectedItem: true,
                  //label: "Search User",
                  onFind: (String filter) async {
                    context
                        .bloc<EditOrgBloc>()
                        .add(EditOrgEvent.getSearch(filter));

                    return state.search.asList();
                  },
                  itemAsString: (UserList u) => u.profileName,

                  onSaved: (selectedUser) => context
                      .bloc<EditOrgBloc>()
                      .add(EditOrgEvent.eMemberSelected(selectedUser.userID)),
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                height: 40.0,
                width: 250.0,
                child: FlatButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();

                      // setState(() {
                      //   _isLoading = true;
                      // });
                    }

                    context.bloc<EditOrgBloc>().add(EditOrgEvent.addEMember(
                        widget.state.org.orgID.getOrCrash(),
                        widget.state.eMember));

                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text(
                    'Add Eboard Member',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            BlocBuilder<EditOrgBloc, EditOrgState>(builder: (context, state) {
              return SliverList(
                key: UniqueKey(),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final int colorValue = int.parse(
                        widget.state.users[index].primaryColor,
                        radix: 16);
                    final userColor = Color(colorValue);

                    return Slidable(
                      actionPane: const SlidableDrawerActionPane(),
                      actions: <Widget>[
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () => context.bloc<EditOrgBloc>().add(
                              EditOrgEvent.removeEMember(
                                  state.eboard[index].userID.getOrCrash(),
                                  state.org.orgID.getOrCrash())),
                        ),
                      ],
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: userColor,
                            radius: 30.0,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: state
                                      .users[index].profileImageUrl.isEmpty
                                  ? Image.asset(
                                          'assets/images/user_placeholder.png')
                                      .image
                                  : CachedNetworkImageProvider(
                                      state.users[index].profileImageUrl),
                            ),
                          ),
                          title: Text(state.users[index].profileName),
                          subtitle: Text(state.eboard[index].position),
                        ),
                      ),
                    );
                  },
                  childCount: state.eboard.size,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
