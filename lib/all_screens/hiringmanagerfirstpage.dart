import 'package:flutter/material.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class HiringManagerFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HiringManagerFirstPageState();
  }
}

class HiringManagerFirstPageState extends State<HiringManagerFirstPage> {
  int count = 0;
  List<Requirement> requirementList;

  @override
  Widget build(BuildContext context) {
    if (requirementList == null) {
      requirementList = List<Requirement>();

      requirementList.add(Requirement(1, 'Java', 2));
      requirementList.add(Requirement(2, 'Sales Representative', 4));
      requirementList.add(Requirement(3, 'C++', 3));
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
      appBar: AppBar(title: Text('Requirements')),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Requirement',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.title;
    TextStyle subTitleStyle = Theme.of(context).textTheme.subtitle;
    return ListView.builder(
        itemCount: this.requirementList.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: GestureDetector(
                onTap: () {},
                child: Icon(Icons.info),
              ),
              title: Text(
                this.requirementList[position].title,
                style: titleStyle,
              ),
              subtitle: Text(
                this.requirementList[position].no_of_vacancies.toString(),
                style: subTitleStyle,
              ),
              trailing: SizedBox(
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
              ),

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
