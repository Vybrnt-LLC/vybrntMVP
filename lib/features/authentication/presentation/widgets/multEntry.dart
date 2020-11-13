import 'dart:core';

import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/option.dart';


class MultEntry extends StatefulWidget {
  
  final title;
  final optionList;
  final limit;

  var selectedOptions;

  

  MultEntry({this.title, this.optionList, this.limit, this.selectedOptions});
  @override
  _MultEntryState createState() => _MultEntryState(this.title, this.optionList, this.limit, this.selectedOptions);
}



class _MultEntryState extends State<MultEntry>{

  final String title;
  List<Option> optionList;
  final int limit;

  String query = "";
  String errorMessage = "";

  List<Option> selectedOptions = List<Option>();
  TextEditingController editingController = TextEditingController();
  bool preferNot2;
  final fade = 1;
  

  void initState(){
    super.initState();
    preferNot2 =  setPreferNot2(selectedOptions);
   
  }
  
    _MultEntryState(this.title, this.optionList, this.limit, this.selectedOptions);
  
  
    List<Option> filterSearchResults(String query){
       List<Option> filterOptions = new List<Option>();
  
      optionList.forEach((element) {
          if(element.optionInfo.toLowerCase().contains(query.toLowerCase()))
          {
            filterOptions.add(element);
          }
        }
      );
    return filterOptions;
      
    }
    
     void dispose() {
      // Clean up the controller when the widget is disposed.
      editingController.dispose();
      super.dispose();
    }
  
    @override
    Widget build(BuildContext context) {
      //@mustCallSuper?
      List<Option> filterOptions = filterSearchResults(query);
     
      return WillPopScope(
            onWillPop: _requestPop,
                      child: Scaffold(
                    resizeToAvoidBottomPadding: false,
                    appBar: AppBar(
                      title: Text(title), 
                      actions: <Widget>[
                        FlatButton(
                          onPressed: (){setState((){
                              preferNot2 = !preferNot2;
                              selectedOptions.forEach((element){element.selected = false;});
                              selectedOptions.clear(); 
                              Option nullAnswer = new Option(optionInfo: "Prefer not to answer", image: "placeholder.png");
                              if(preferNot2)
                              {selectedOptions.add(nullAnswer);}
                            });}, 
                          child: (preferNot2) ? Text("Change your mind?") : Text("Prefer not to answer?"))],
                    ),
                    body: AnimatedCrossFade(
                      crossFadeState: (preferNot2) ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(seconds: fade),
                      firstChild: Center(
                        child: Container(
                          child: Text("You don't have to." + 
                          "\nHit the button again if you change your mind",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                          ))),
                      
                      secondChild: Container(
                        alignment: Alignment.center, 
                            child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 65, 
                                    alignment: Alignment.center,
                                    child: Text(
                                      "My $title(s) are",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontStyle: FontStyle.italic
                                      )
                                    ),
                                  ),
                                  Container(
                                     height: 20.0,
                                     child: Center(
                                       child: Text(
                                        "Limit: $limit option(s)",
                                        style: TextStyle(
                                          fontSize: (selectedOptions.length < limit) ? 15.0: 17.0,
                                          fontFamily: '',
                                          fontStyle: FontStyle.italic,
                                          color: (selectedOptions.length < limit) ? Colors.black : Colors.red
                                        )
                                        ),
                                     ),
                                   ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      enabled: (selectedOptions.length < limit) ? true : false,
                                      onChanged: (value){ 
                                        setState(() {query = value;});
                                      },
                                      controller: editingController,
                                      decoration: InputDecoration(
                                          hintText: "Search",
                                          labelText:  (selectedOptions.length < limit)? "Search" : "Limit is reached",
                                          prefixIcon: Icon(Icons.search),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {editingController.clear(); query = "";
                                              });
                                            },
                                            icon: Icon(Icons.clear),
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    child: AnimatedCrossFade(
                                      duration: Duration(seconds: fade),
                                        firstChild: new ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          itemCount: filterOptions.length,
                                          itemBuilder: (context, index){
                                          return Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Card(
                                                color: filterOptions[index].selected ? Colors.blue : Colors.transparent,
                                                child: ListTile(                            
                                                    onTap: () {
                                                      setState((){                          
                                                        if (!filterOptions[index].selected && selectedOptions.length < limit)
                                                        {
                                                          selectedOptions.add(filterOptions[index]);
                                                          filterOptions[index].selected = true;
                                                        }
                                                        else{
                                                          selectedOptions.remove(filterOptions[index]);
                                                          filterOptions[index].selected = false;
                                                        }
                                                      });
                                                    },
                                                    title: Text(filterOptions[index].optionInfo),
                                                    leading: CircleAvatar(
                                                      backgroundImage: AssetImage("assets/${filterOptions[index].image}"),
                                                    )
                                                  ),
                                              ),
                                          );
                                        }
                                      ),
                                    secondChild:  RaisedButton.icon(icon: Icon(Icons.add), onPressed: ((){if(selectedOptions.length < limit) {_askUser();} }), label: Text("Add $title?")),
                                    crossFadeState: (filterOptions.length > 0) ? CrossFadeState.showFirst : CrossFadeState.showSecond
                                  ),            
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.01, vertical : MediaQuery.of(context).size.width * 0.02),
                                  height: MediaQuery.of(context).size.height * 0.12,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                      itemCount: selectedOptions.length, itemBuilder: (context, index) {
                                        return Container(
                                          width: MediaQuery.of(context).size.width * 0.6,
                                            child: Card(
                                              color: Colors.purple,
                                              child: Center(
                                                  child: ListTile(
                                                    title: Text(selectedOptions[index].optionInfo, style: TextStyle(color: Colors.white, fontSize: 15.0)),
                                                    trailing: IconButton(icon: Icon(Icons.close), onPressed: (){
                                                      setState((){
                                                        selectedOptions[index].selected = false;
                                                        selectedOptions.removeAt(index);
                                                        });
                                                    })
                                                  ),
                                                ),
                                          ),
                                        );
                                  }),
                                ),
                                Visibility(
                                  visible: selectedOptions.length > 0 ? true: false,
                                  child: RaisedButton(
                                              onPressed: () {
                                                setState(() {
                                                  errorMessage = "";
                                                  query = "";
                                                  selectedOptions.clear();
                                                  editingController.clear();
                                                  filterOptions.forEach((element) {
                                                    element.selected = false;
                                                  });
            
                                                });   
                                              },
                                              color: Colors.green[400],
                                              child: Text(
                                                "Clear",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                                )
                                              )
                                  ),
                                ),  
                            ],),
                        ),
                    ),
                  ),
                );
              } 
              Future  _askUser() async {
                await showDialog(
                    context: context,  
                    child: new SimpleDialog(
                      title: new Text('Update the database'),
                      children: <Widget>[
                        new SimpleDialogOption(
                          child: new TextField(
                            controller: editingController,
                            decoration: InputDecoration(
                                  labelText: "Type your $title here",
                                  hintText: "Enter your $title here",
                                  prefixIcon:  FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        String info = editingController.text;
                                        bool newInfo = true; int index = -1;
                                        optionList.forEach((element) {if(info.toLowerCase() == element.optionInfo.toLowerCase()){newInfo = false; index = optionList.indexOf(element);}});
                                        if(newInfo){
                                          Option writeIn = new Option.writeIn(optionInfo:info, image: "placeholder.png", selected: true);
                                          optionList.add(writeIn);
                                          selectedOptions.add(writeIn);
                                        }
                                        else{
                                          if(selectedOptions.indexOf(optionList[index]) < 0){
                                             optionList[index].selected = true;
                                             selectedOptions.add(optionList[index]);
                                          }
                                        }
                                        query = "";
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Text("Add: "),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(1.0))
                                  ),
                                  
                              ),
                          )
                        ),
                        
                    ],
                  )
                ); 
    }
            
            
    Future<bool> _requestPop() {
        Navigator.pop(context, selectedOptions);
        return new Future.value(true);
    }
  
    static bool setPreferNot2(selectedOptions) {
      Option nullAnswer = new Option(optionInfo: "Prefer not to answer", image: "placeholder.png");

      if(selectedOptions.length == 1 && selectedOptions[0].optionInfo == nullAnswer.optionInfo){
        return true;
      }
      return false;

      
    }
}