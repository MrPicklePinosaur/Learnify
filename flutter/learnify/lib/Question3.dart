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
import 'package:learnify/Question3.dart';
import 'package:learnify/Question4.dart';
import 'package:learnify/Question5.dart';

class Question3 extends StatelessWidget {
  static String commitment = '';

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
                "how much time do you have?",
                style: TextStyle(
                  color: const Color(0xff99216203),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Text(
              '3. time commitment / week',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Rubik',
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.white,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '1-2 hours',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  commitment = "1-2 hours";
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.white,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '3-5 hours',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  commitment = "3-5 hours";
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                textColor: Colors.black,
                elevation: 6,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '6+',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                  ),
                ),
                onPressed: () {
                  commitment = "6+";
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(60.0),
                      side: BorderSide(color: Colors.white)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Question4()));
                  },
                  textColor: Colors.black,
                  elevation: 6,
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '>',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
