import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';
import 'package:interview_application/models/radiobuttonmodel.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class RecruiterAddCandidate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecruiterAddCandidateState();
  }
}

class RecruiterAddCandidateState extends State<RecruiterAddCandidate> {

  //List<> _radioList;

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
              padding: EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Center(
                child: Text(
                  'Add Feedback',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              )),
          //Text

          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              style: textStyle,
              //controller: tc,
              decoration: InputDecoration(
                labelText: 'Interview Round Number',
                hintText: 'e.g. 2',
                labelStyle: TextStyle(
                  color: Colors.blue[900],
                ),
              ),
            ),
          ),

          Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: AutoCompleteTextField(
                decoration: new InputDecoration(
                  //suffixIcon: Container(
                  //width: 85.0,
                  //height: 60.0,
                  //),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                  // filled: true,
                  labelText: 'Interviewer Name',
                  //hintText: 'Customer Name',
                  labelStyle: TextStyle(color: Colors.blue[900]),
                ),
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              )),
          // Interviewer Name

          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: TextField(
              style: textStyle,
              //controller: tc,
              decoration: InputDecoration(
                labelText: 'Feedback',
                //hintText: 'Good in Java Spring, etc',
                labelStyle: TextStyle(color: Colors.blue[900]),
              ),
            ),
          ),
          //Feedback



          Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 50,
                height: 35,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.blue[900])),
                    color: Colors.white,
                    textColor: Colors.blue[900],
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
/*void changeStatus(String value){
    setState(() {
      _radioValueStatus = value;
    });
  }*/
}
