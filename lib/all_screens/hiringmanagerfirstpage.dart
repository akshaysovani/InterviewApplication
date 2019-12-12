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
      requirementList.add(Requirement(1, 'Java', 2,'Project alpha'));
      requirementList.add(Requirement(2, 'Sales Representative', 4,'Project beta'));
      requirementList.add(Requirement(3, 'C++', 3,'Project gamma'));
      requirementList.add(Requirement(3, 'Java', 1,'Project gamma'));
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
        backgroundColor: Colors.blue[900],
        onPressed: () {},
        tooltip: 'Add Requirement',
        child: Icon(Icons.add, color: Colors.white,),
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
              /*leading: GestureDetector(
                onTap: () {},
                child: Icon(Icons.info,
                //    color: Colors.black
                ),
              ),*/
              title: Text(
                //'\n'+
                this.requirementList[position].title
                 + ' - ' + this.requirementList[position].no_of_vacancies.toString()
                ,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
              subtitle: Text(
                 //'\n' +
                 this.requirementList[position].project_name
                //  + '\n'
                ,
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  color: Colors.grey[7000],
                  fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              trailing: SizedBox(
                width: 80.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blue,
                      child: GestureDetector(

                        onTap: () {},
                        child: Icon(Icons.edit
                          //color: Colors.blue
                        ),
                      ),
                    ),
                    Container(width: 25,),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.delete
                        //color: Colors.red,
                        ),
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