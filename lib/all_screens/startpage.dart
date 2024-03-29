import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:interview_application/all_screens/interviewerseecandidates.dart';
import 'package:interview_application/all_screens/recruiterseerequirements.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';
import 'package:interview_application/all_screens/hiringmanagerseerequirement.dart';
import 'package:interview_application/all_screens/recruiterseecandidatesandrequirements.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartPageState();
  }
}

class StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          LoginImageAsset(),
          Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 50,
                height: 44,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.blue)),
                    //color: Colors.white,
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text(
                      'Hiring Manager',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      goToHiringManagerSeeRequirements();
                    }),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 50,
                height: 44,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.blue)),
                    //color: Colors.white,
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text(
                      'Recruiter',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        goToRecruiterSeeCandidatesAndRequirements();
                      });
                    }),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 50,
                height: 44,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.blue)),
                    //color: Colors.white,
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text(
                      'Interviewer',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {goToInterviewerSeeCandidates();});
                    }),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 50,
                height: 44,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.blue)),
                    //color: Colors.white,
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text(
                      'Management',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {});
                    }),
              )),
          Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: getSignUpText())
        ],
      ),
    );
  }

  Widget getSignUpText() {
    return Row(
      children: <Widget>[
        Container(
          width: 40,
        ),
        Text('Don\'t have an account? ',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontFamily: 'Open Sans')),
        Text('Sign Up',
            style: TextStyle(
                color: Colors.blue[900], fontSize: 18, fontFamily: 'Open Sans'))
      ],
    );
  }


  void goToHiringManagerSeeRequirements(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return HiringManagerSeeRequirements();
    }));
  }

  void goToRecruiterSeeCandidatesAndRequirements(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return RecruiterSeeCandidatesAndRequirements();
    }));
  }

  void goToInterviewerSeeCandidates(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return InterviewerSeeCandidates();
    }));
  }
}

class LoginImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('assets/images/login.png');
    Image image = Image(
      image: assetImage,
      height: 230,
      width: 300,
    );
    return Container(child: image);
  }
}
