import 'package:flutter/material.dart';
import 'package:interview_application/all_screens/firstpage.dart';
import 'package:interview_application/all_screens/hiringmanagerfirstpage.dart';
//import 'package:flutter_web/material.dart';

void main(){
  runApp(InterviewApp());
}

class InterviewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Helper',
      home: HiringManagerFirstPage(),
    );
  }

}