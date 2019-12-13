import 'package:flutter/material.dart';
import 'package:interview_application/all_screens/loginpage.dart';
import 'package:interview_application/all_screens/hiringmanagerseerequirement.dart';
import 'package:interview_application/all_screens/hiringmanagerseecandidates.dart';
import 'package:interview_application/all_screens/hiringmanageraddrequirement.dart';
import 'package:interview_application/all_screens/hiringmanagerseeroundsofcandidate.dart';
import 'package:interview_application/all_screens/interviewerfirstpage.dart';
import 'package:interview_application/all_screens/interviewersecondpage.dart';
import 'package:interview_application/all_screens/Interviewerthirdpage.dart';
import 'package:interview_application/all_screens/interviewerenterfeedback.dart';
import 'package:interview_application/all_screens/recruiteraddcandidate.dart';
import 'package:interview_application/all_screens/recruiterfirstpage.dart';
import 'package:interview_application/all_screens/recruiterseecandidates.dart';
import 'package:interview_application/all_screens/recruiterseeroundsofcandidate.dart';

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
            fontFamily: 'Open Sans'
            //backgroundColor: Colors.grey,
            ),
        debugShowCheckedModeBanner: false,
        title: 'Interview Helper',

        //home: RecruiterSeeRoundsOfCandidate(),
        //home: RecruiterAddCandidate(),
        //home: RecruiterSeeCandidatesByRequirement(),
        //home: RecruiterFirstPage(),
        //home: InterviewerEnterFeedback(),
        //home: InterviewerThirdPage()
        //home: InterviewerSecondPage()
        //home: InterviewerFirstPage()
        //home: HiringManagerSeeRoundsOfCandidate()
        //home: HiringManagerSeeCandidates()
        //home: HiringManagerAddRequirement(),
        home: HiringManagerSeeRequirements());
  }
}
