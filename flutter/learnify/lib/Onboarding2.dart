import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Onboarding2.dart';
import 'package:learnify/Onboarding1.dart';
import 'package:learnify/Onboarding3.dart';
import 'package:learnify/Dashboard.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Login.dart';

class Onboarding2 extends StatelessWidget {
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
                "programming made easy.",
                style: TextStyle(
                  color: const Color(0xff99216204),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Image.asset('assets/images/2.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Text(
                "With thousands of resources, it's hard to know what's best.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Learnify uses suggestions by trusted members of the community and our own, constantly updating database to create a high-quality list of resources, so you can be rest assured you're getting the best.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'next',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.blueGrey[900],
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onboarding3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
