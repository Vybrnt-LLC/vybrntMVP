import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/user/domain/models/item_model.dart';

import '../../domain/models/user.dart';

class UserProfileAboutTab extends StatefulWidget {
  final User user;
  final String name;
  final List<Item> data;

  const UserProfileAboutTab({Key key, this.user, this.name, this.data})
      : super(key: key);
  @override
  _UserProfileAboutTabState createState() => _UserProfileAboutTabState();
}

class _UserProfileAboutTabState extends State<UserProfileAboutTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          key: PageStorageKey<String>(widget.name),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ExpansionPanelList(
                key: PageStorageKey('expansion-tile'),
                animationDuration: Duration(milliseconds: 500),
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    widget.data[index].isExpanded =
                        !widget.data[index].isExpanded;
                  });
                },
                children: widget.data.map<ExpansionPanel>((Item item) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.headerValue),
                      );
                    },
                    body: ListTile(
                      title: Text(item.expandedValue),
                    ),
                    isExpanded: item.isExpanded,
                    canTapOnHeader: true,
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
