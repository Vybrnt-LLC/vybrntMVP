
import 'package:flutter/material.dart';

class Option{

  String optionInfo;
  final String image;
  bool selected = false; 

  Option({@required this.optionInfo, @required this.image});

  Option.writeIn({@required this.optionInfo, @required this.image, this.selected});


  @override
  String toString(){
    return this.optionInfo + " " + this.selected.toString();
  }

}