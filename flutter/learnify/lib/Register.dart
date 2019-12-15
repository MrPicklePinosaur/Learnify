import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Question3.dart';
import 'package:learnify/Question2.dart';
import 'package:learnify/Question4.dart';
import 'package:learnify/Question5.dart';

var handler = CommandHandler();


//LOGIN PAGE
class Register extends StatelessWidget {
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    '<register>',
                    style: TextStyle(
                      color: const Color(0xff99316203),
                      fontFamily: 'Rubik',
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                    border: OutlineInputBorder(),
                  ),
                  controller: usernameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 25.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(),
                  ),
                  controller: passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 25.0),
                child: RaisedButton(
                  child: Text('log in'),
                  onPressed: () {
                    handler.createUser(usernameController.text, passwordController.text,Question1.selectedExperience,Question2.language,Question3.commitment,Question4.interests,Question5.depth);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Question1()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
