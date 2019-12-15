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

class Question2 extends StatelessWidget {
  static String language = '';

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
                "what languages do you know?",
                style: TextStyle(
                  color: const Color(0xff99216203),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Text(
              '2. languages',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Rubik',
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.white,
                    elevation: 4,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'none',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "none";
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 25.0, top: 25.0, bottom: 25.0),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.white,
                    elevation: 6,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'java',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "java";
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25.0, right: 25.0, left: 25.0),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.black,
                    elevation: 6,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'js',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "js";
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
                      'python',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "python";
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25.0, right: 25.0, left: 25.0),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    textColor: Colors.black,
                    elevation: 6,
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'html/css',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "html/css";
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
                      'C++',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () {
                      language = "C++";
                    },
                  ),
                ),
              ],
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
                        MaterialPageRoute(builder: (context) => Question3()));
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
