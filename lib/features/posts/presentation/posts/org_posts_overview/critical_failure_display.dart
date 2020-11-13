import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( 
        mainAxisSize: MainAxisSize.min, 
        children: [
          const Text("CRITICAL ERROR:", style: TextStyle(fontSize:100),),
          Text(
            "Please Contact Support: 724-553-4945"
          )
        ]
      )
      
    );
  }
}