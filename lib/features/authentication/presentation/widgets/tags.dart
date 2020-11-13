import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/tags_gridview.dart';


class Tags extends StatelessWidget{
  final uid;

  const Tags(String userID, {this.uid});
  
  @override 
  Widget build(BuildContext context){
    return GridPage();
  }
}
