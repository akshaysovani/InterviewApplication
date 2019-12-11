import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class InterviewerEnterFeedback extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InterviewerEnterFeedbackState();
  }
}

class InterviewerEnterFeedbackState extends State<InterviewerEnterFeedback> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return Scaffold(
      appBar: AppBar(
        title: Text('Akshay Sovani'),
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
                  'Add Feedback',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              )),
          //Text

          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 50,
              right: 50,
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              style: textStyle,
              //controller: tc,
              decoration: InputDecoration(
                  labelText: 'Interview Round Number',
                  hintText: 'e.g. 2',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                  )),
            ),
          ),

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
                  hintText: 'Interviewer Name',
                  hintStyle: textStyle,
                ),
              )),

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
                  hintText: 'Feedback',
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
