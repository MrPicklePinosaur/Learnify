import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Onboarding2.dart';
import 'package:learnify/Onboarding1.dart';
import 'package:learnify/Onboarding3.dart';
import 'package:learnify/Dashboard.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Login.dart';
import 'package:learnify/Question2.dart';

class Question1 extends StatelessWidget {
  List<String> experiences = ['beginner', 'intermediate', 'expert'];
  static String selectedExperience;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "let's create your first course",
                style: TextStyle(
                  color: const Color(0xff99216203),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Text(
              '1. Experience level',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Rubik',
                fontSize: 25,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 25.0, bottom: 25.0, top: 25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.black,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  experiences[0],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  selectedExperience = experiences[0];
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question2()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.black,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  selectedExperience = experiences[1],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  selectedExperience = experiences[1];
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question2()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.black,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  selectedExperience = experiences[2],
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  selectedExperience = experiences[2];
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question2()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
