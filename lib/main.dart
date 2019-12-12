import 'package:flutter/material.dart';
import 'package:interview_application/all_screens/hiringmanagerfirstpage.dart';
import 'package:interview_application/all_screens/languagepage.dart';
import 'package:interview_application/all_screens/hiringmanageraddrequirement.dart';
import 'package:interview_application/all_screens/candidatepage.dart';
import 'package:interview_application/all_screens/interviewerfirstpage.dart';
import 'package:interview_application/all_screens/interviewersecondpage.dart';
import 'package:interview_application/all_screens/interviewerenterfeedback.dart';
import 'package:interview_application/all_screens/recruiteraddcandidate.dart';

void main() {
  runApp(InterviewApp());
}

class InterviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /*theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),*/
        theme: ThemeData(
          //brightness: Brightness.dark,
          primaryColor: Colors.blue[900],
          accentColor: Colors.grey[200],
          //backgroundColor: Colors.grey,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Interview Helper',

      home: InterviewerEnterFeedback(),
        //home: InterviewerEnterFeedback(),
        //home: LanguagePage()
        //home: InterviewerFirstPage()
        //home: CandidatePage()
        //home: LanguagePage()
        //home: HiringManagerAddRequirement(),
        //home: HiringManagerFirstPage()

    );
  }
}
