import 'package:flutter/material.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';
import 'package:interview_application/all_screens/recruiterseecandidates.dart';
import 'package:interview_application/all_screens/recruiterseerequirements.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class RecruiterSeeCandidatesAndRequirements extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecruiterSeeCandidatesAndRequirementsState();
  }
}

class RecruiterSeeCandidatesAndRequirementsState
    extends State<RecruiterSeeCandidatesAndRequirements> {
  int count = 0;
  List<Requirement> requirementList;

  Icon searchIcon = Icon(Icons.search);
  Widget searchBar = Text('Interview Helper');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // goToPreviousPage();
                if (this.searchIcon.icon == Icons.search){
                  goToStartPage();
                }else{
                  this.searchIcon = Icon(Icons.search);
                  this.searchBar = Text('Interview Helper');
                }

              }),
          title: this.searchBar,
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.group),
                text: 'Candidates',
              ),
              Tab(
                icon: Icon(Icons.description),
                text: 'Requirements',
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  if (this.searchIcon.icon == Icons.search) {
                    this.searchIcon = Icon(Icons.description);
                    this.searchBar = TextField(
                      textInputAction: TextInputAction.go,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    );
                  } else {
                    this.searchIcon = Icon(Icons.search);
                    this.searchBar = Text('Interview Helper');
                  }
                });
              },
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            RecruiterSeeCandidatesByRequirement(),
            RecruiterSeeRequirements()
          ],
        ),
      ),
    );
  }

  void goToStartPage() {
    Navigator.pop(context);
  }
}
