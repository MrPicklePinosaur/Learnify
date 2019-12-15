import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Onboarding2.dart';
import 'package:learnify/Onboarding1.dart';
import 'package:learnify/Onboarding3.dart';
import 'package:learnify/Dashboard.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Login.dart';
import 'package:learnify/Learn1.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: const Color(0xff99316203),
                    fontFamily: 'Rubik',
                    fontSize: 48,
                  ),
                ),
              ),
              Text(
                'continue learning',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontSize: 19,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(25.0),
                      child: Image.asset(
                        'assets/images/flutterformobile.jpg',
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(25.0),
                    child: Image.asset(
                      'assets/images/wack.jpg',
                      height: 110,
                      width: 110,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(25.0),
                      child: Image.asset(
                        'assets/images/webweb.jpg',
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'stats',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Rubik',
                  fontSize: 19,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/stats.png'),
                ),
              ),
              RaisedButton(
                child: Text('GO'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Learn1()));
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.file_upload),
            title: new Text('Upload'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('Settings'),
          ),
        ]),
      ),
    );
  }
}
