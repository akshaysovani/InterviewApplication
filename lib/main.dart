import 'package:flutter/material.dart';
import 'package:interview_application/all_screens/hiringmanagerfirstpage.dart';
import 'package:interview_application/all_screens/languagepage.dart';
//import 'package:flutter_web/material.dart';
import 'package:interview_application/all_screens/hiringmanageraddrequirement.dart';
import 'package:interview_application/all_screens/candidatepage.dart';
import 'package:interview_application/all_screens/interviewerfirstpage.dart';
import 'package:interview_application/all_screens/interviewersecondpage.dart';
import 'package:interview_application/all_screens/interviewerenterfeedback.dart';

void main(){
  runApp(InterviewApp());
}

class InterviewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      title: 'Interview Helper',
      //home: LanguagePage(),
      home: InterviewerEnterFeedback(),
    );
  }
}