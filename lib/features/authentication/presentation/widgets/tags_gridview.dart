import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/routes/router.gr.dart' as route;
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/multEntry.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/option.dart';
import 'package:vybrnt_mvp/features/authentication/presentation/widgets/tags_pageview.dart';
import 'package:vybrnt_mvp/features/user/services/database_service.dart';

class GridPage extends StatefulWidget {
  final uid;

  const GridPage({this.uid});

  @override
  _GridPageState createState() => _GridPageState(this.uid);
}

const TITLE = "SIGN-IN";
const HEIGHT = 400.0;
const List<String> titles = [
  "Major",
  "Race",
  "Ethnicity",
  "Gender",
  "Sexuality",
  "Interests"
];
const String image = "vybrnt_background";
Map information = {
  "Major": List<Option>(),
  "Race": List<Option>(),
  "Ethnicity": List<Option>(),
  "Gender": List<Option>(),
  "Sexuality": List<Option>(),
  "Interests": List<Option>()
};
bool done = false;

class _GridPageState extends State<GridPage> {
  final uid;

  _GridPageState(this.uid);

  List<Widget> pages = generatePages(titles, information);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(TITLE),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "We want to know more about you\nto make your experience better",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
              Center(
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  height: HEIGHT,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 3,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(titles.length, (index) {
                      return RaisedButton(
                        color: (information[titles[index]].length > 0)
                            ? Colors.blue
                            : Colors.transparent,
                        onPressed: () async {
                          String title = titles[index];
                          MyPageView pg2 = new MyPageView(
                              screens: pages, initialScreen: index);
                          List<Option> selectedData = await Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => pg2));

                          information[title] = selectedData;
                          setState(() {
                            done = true;
                            for (int i = 0; i < titles.length; i++) {
                              List<Option> array = information[titles[i]];
                              if (array.length == 0) {
                                done = false;
                              }
                            }
                          });
                        },
                        child: Text(
                          '${titles[index]}',
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Visibility(
                visible: done ? true : false,
                child: RaisedButton(
                    onPressed: () {
                      Map data = new Map();
                      titles.forEach((title) {
                        // print(title);
                        List<Option> options = information[title];
                        List<String> dataSet = new List<String>();
                        options.forEach((element) {
                          //print(element.optionInfo);
                          dataSet.add(element.optionInfo);
                        });
                        data[title] = dataSet;
                      });

                      //DatabaseService.inputTags(uid, data);
                      //print("Done");
                      /*titles.forEach((title){
                    print("Inputted");
                    print(title);
                    print(data[title]);
                  });*/
                      //ZZZZExtendedNavigator.of(context);
                      context.navigator.push(route.Routes.wrapper2);
                    },
                    child: Text("Done?")),
              )
            ],
          ),
        ),
      ),
    );
  }

  static List<Widget> generatePages(List<String> titles, Map information) {
    List<Widget> pages = new List<Widget>();

    for (int i = 0; i < titles.length; i++) {
      String title = titles[i];
      List<Option> options = new List<Option>();

      for (int j = 1; j <= 10; j++) {
        Option placeHOLDER =
            new Option(optionInfo: "$title Option #$j", image: image + ".png");
        options.add(placeHOLDER);
      }
      MultEntry page = new MultEntry(
          title: title,
          optionList: options,
          limit: 3,
          selectedOptions: information[title]);
      pages.add(page);
    }
    return pages;
  }
}
