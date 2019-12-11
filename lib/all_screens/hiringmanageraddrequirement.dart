import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class HiringManagerAddRequirement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HiringManagerAddRequirementState();
  }
}

class HiringManagerAddRequirementState
    extends State<HiringManagerAddRequirement> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Requirement'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // goToPreviousPage();
            }),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Center(
                child: Text(
                  'Long Press -> Add primary skill ' +
                      '\n' +
                      'Single tap -> Add secondary skills',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )),
          //Text

          Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'Java',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )
              //Java

              ),
          Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'C++',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),
          //C++

          Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'Python',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),
          //Python

          Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'SQL',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),

          Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'Communication',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),
          //Communication

          Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'R',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),
          //R

          Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 50,
                right: 50,
              ),
              child: AutoCompleteTextField(
                style: new TextStyle(color: Colors.black, fontSize: 16.0),
                decoration: new InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide: BorderSide(
                        color: Colors.teal,
                      )),
                  /*border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),*/
                  suffixIcon: Container(
                    width: 85.0,
                    height: 60.0,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                  // filled: true,
                  hintText: 'Add Project Name',
                  hintStyle: textStyle,
                ),
              )),
          // Project Name

          Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 50,
                right: 50,
              ),
              child: AutoCompleteTextField(
                style: new TextStyle(color: Colors.black, fontSize: 16.0),
                decoration: new InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  ),
                  suffixIcon: Container(
                    width: 85.0,
                    height: 60.0,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 4.0),
                  //filled: true,
                  hintText: 'Add Customer Name',
                  hintStyle: textStyle,
                ),
              )),
          // Customer Name

          Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 90,
                right: 90,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text(
                      'Save',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              ))
        ],
      ),
    );
  }
}
