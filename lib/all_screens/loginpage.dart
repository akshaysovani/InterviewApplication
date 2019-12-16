import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'dart:async';
import 'package:interview_application/models/requirement.dart';

//import 'package:first_flutter_app/utils/database_helper.dart';
//import 'package:first_flutter_app/All_screens/NoteDetail.dart';
//import 'package:sqflite/sqflite.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
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
              top: 10,
              left: 20,
              right: 20,
            ),
            child: TextField(
              style: textStyle, //controller: tc,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'Username',
                //hintText: 'e.g. 2',
                labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 18,
                    fontFamily: 'Open Sans'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: TextField(
              style: TextStyle(color: Colors.black),
              //controller: tc,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'Password',
                //hintText: 'e.g. 2',
                labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 18,
                    fontFamily: 'Open Sans'),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: 40,
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
                      'LOGIN',
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
        Container(width: 40,),
        Text('Don\'t have an account? ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Open Sans')),
        Text('Sign Up',
            style: TextStyle(
                color: Colors.blue[900], fontSize: 18, fontFamily: 'Open Sans'))
      ],
    );
  }
}

class LoginImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('assets/images/login.png');
    Image image = Image(
      image: assetImage,
      height: 250,
      width: 300,
    );
    return Container(child: image);
  }
}
