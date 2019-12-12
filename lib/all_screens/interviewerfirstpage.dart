import 'package:flutter/material.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';
import 'package:interview_application/models/candidate.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class InterviewerFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InterviewerFirstPageState();
  }
}

class InterviewerFirstPageState extends State<InterviewerFirstPage> {
  //int count = 0;
  //List<Candidate> candidateList;
  List<String> skills;

  @override
  Widget build(BuildContext context) {
    if (skills == null) {
      skills = List<String>();

      skills.add('Java');
      skills.add('C++');
      skills.add('Python');
      skills.add('R');
      skills.add('Communication');
      skills.add('SQL');

      /*requirementList[0].id = 1;
      requirementList[0].title = 'Java';
      requirementList[0].no_of_vacancies = 2;
      //requirementList[0].date_updated = ;

      requirementList[1].id = 2;
      requirementList[1].title = 'Sales Representative';
      requirementList[1].no_of_vacancies = 4;
*/
      // updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // goToPreviousPage();
            }),
        title: Text('Skills'),
      ),
      body: getListView(),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Requirement',
        child: Icon(Icons.add),
      ),*/
    );
  }

  ListView getListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.title;
    TextStyle subTitleStyle = Theme.of(context).textTheme.subtitle;
    return ListView.builder(
        itemCount: this.skills.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              title: Center(
                child: Text(
                  this.skills[position],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.blue[900]),
                ),
              ),
              /*subtitle: Text(
                this.candidateList[position].experience_level,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500
                ),
              ),*/
              /*trailing: SizedBox(
                width: 130,
                child: Text('Cleared Round 2',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              ),*/
              /*trailing: SizedBox(
                width: 80.0,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.edit),
                    ),
                    Container(width: 25,),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.delete),
                    )
                  ],
                ),
              ),*/

              /*
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ), //edit

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.delete),
                      ),
                    ),
                  )
                ],*/
            ),
          );
        });
  }
}
