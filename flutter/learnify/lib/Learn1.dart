import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Onboarding2.dart';
import 'package:learnify/Onboarding1.dart';
import 'package:learnify/Onboarding3.dart';
import 'package:learnify/Dashboard.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Login.dart';

class Learn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "computer vision",
                  style: TextStyle(
                    color: const Color(0xff99216204),
                    fontFamily: 'Rubik',
                    fontSize: 48,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              '1',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 35,
                                  color: Colors.blue),
                            ),
                            title: Text(
                              'Introduction | 11 min',
                            ),
                            subtitle: Text('video provided by CrashCourse'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              '2',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 35,
                                  color: Colors.blue),
                            ),
                            title: Text('OCR & Facial Recognition'),
                            subtitle: Text('video provided by Udacity'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              '3',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 35,
                                  color: Colors.blue),
                            ),
                            title: Text('Comparing CV APIs | 10 mins'),
                            subtitle: Text('article published on Medium'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              '4',
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 35,
                              ),
                            ),
                            title: Text(
                                'Intro to Neural Networks for Image Classifications | 1 hr'),
                            subtitle:
                                Text('video provided by Stanford University'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 7,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              '5',
                              style:
                                  TextStyle(fontFamily: 'Rubik', fontSize: 35),
                            ),
                            title:
                                Text('Loss and Functions Optimization | 1 hr'),
                            subtitle:
                                Text('video provided by Stanford University'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 7,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Text(
                            '6',
                            style: TextStyle(fontFamily: 'Rubik', fontSize: 35),
                          ),
                          title:
                              Text('Why now and What\'s Next for CV | 11 min'),
                          subtitle: Text('video provided by Intel'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
