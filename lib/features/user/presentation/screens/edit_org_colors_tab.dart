import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:vybrnt_mvp/features/user/application/edit_user_bloc/edit_user_bloc.dart';
import 'package:vybrnt_mvp/features/user/domain/models/user.dart';

class EditUserColorsTab extends StatefulWidget {
  final User user;
  const EditUserColorsTab({
    Key key,
    this.user,
  }) : super(key: key);

  _EditUserColorsTabState createState() => _EditUserColorsTabState();
}

class _EditUserColorsTabState extends State<EditUserColorsTab> {
  // Use temp variable to only update color when press dialog 'submit' button
  Color _tempMainColor;
  Color _tempAccentColor;
  Color _mainColor;
  Color _accentColor;
  final snackBar = SnackBar(content: Text('Submitted!'));

  @override
  void initState() {
    super.initState();
    int mainValue = int.parse(widget.user.primaryColor, radix: 16);
    int accentValue = int.parse(widget.user.secondaryColor, radix: 16);
    _accentColor = new Color(accentValue);
    _mainColor = new Color(mainValue);
  }

  _showSelectColorDialog(String title, Widget content, bool isMain) {
    return Platform.isIOS
        ? _iosBottomSheet(title, content, isMain)
        : _androidDialog(title, content, isMain);
  }

  _iosBottomSheet(String title, Widget content, bool isMain) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(6.0),
            title: Text(title),
            content: content,
            actions: [
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text('SUBMIT'),
                onPressed: () {
                  Navigator.pop(context);
                  if (isMain) {
                    setState(() => _mainColor = _tempMainColor);
                  } else {
                    setState(() => _accentColor = _tempAccentColor);
                  }
                },
              ),
            ],
          );
        });
  }

  _androidDialog(String title, Widget content, bool isMain) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(6.0),
            title: Text(title),
            content: content,
            actions: [
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text('SUBMIT'),
                onPressed: () {
                  Navigator.pop(context);
                  if (isMain) {
                    setState(() => _mainColor = _tempMainColor);
                  } else {
                    setState(() => _accentColor = _tempAccentColor);
                  }
                },
              ),
            ],
          );
        });
  }

  void _openAccentColorPicker() async {
    _showSelectColorDialog(
        "Accent Color picker",
        MaterialColorPicker(
          colors: fullMaterialColors,
          selectedColor: _accentColor,
          onColorChange: (color) => setState(() => _tempAccentColor = color),
          circleSize: 40.0,
          spacing: 10,
        ),
        false);
  }

  void _openMainColorPicker() async {
    _showSelectColorDialog(
      "Main Color picker",
      MaterialColorPicker(
        colors: fullMaterialColors,
        selectedColor: _mainColor,
        onColorChange: (color) => setState(() => _tempMainColor = color),
      ),
      true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(Colors.black);
    // print(Colors.blue.toString());

    // Color color = new Color(0x12345678);
    // String colorString = Colors.blue.toString(); // Color(0x12345678)
    // String valueString =
    //     colorString.split('(0x')[1].split(')')[0]; // kind of hacky..
    // int value = int.parse(valueString, radix: 16);
    // Color otherColor = new Color(value);
    // print(valueString);
    // print(otherColor.toString());

    return BlocBuilder<EditUserBloc, EditUserState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 62.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: _mainColor,
                radius: 80.0,
                child: const Text("MAIN"),
              ),
              const SizedBox(width: 16.0),
              CircleAvatar(
                backgroundColor: _accentColor,
                radius: 80.0,
                child: const Text("ACCENT"),
              ),
            ],
          ),
          const SizedBox(height: 32.0),
          OutlineButton(
            onPressed: _openMainColorPicker,
            child: const Text('Change Main Color'),
          ),
          const SizedBox(height: 16.0),
          OutlineButton(
            onPressed: _openAccentColorPicker,
            child: const Text('Change Accent Color'),
          ),
          const SizedBox(height: 16.0),
          Container(
            margin: EdgeInsets.all(20.0),
            height: 40.0,
            width: 250.0,
            child: FlatButton(
              onPressed: () {
                String primaryColorString =
                    _mainColor.toString().split('(0x')[1].split(')')[0];
                context
                    .bloc<EditUserBloc>()
                    .add(EditUserEvent.primaryColorChanged(primaryColorString));
                String secondaryColorString =
                    _accentColor.toString().split('(0x')[1].split(')')[0];
                context.bloc<EditUserBloc>().add(
                    EditUserEvent.secondaryColorChanged(secondaryColorString));
                context.bloc<EditUserBloc>().add(EditUserEvent.saveUser());

                Scaffold.of(context).showSnackBar(snackBar);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                'Save Colors',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      );
    });
  }
}
