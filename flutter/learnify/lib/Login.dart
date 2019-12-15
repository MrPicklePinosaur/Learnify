import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Question1.dart';

var handler = CommandHandler();
TextEditingController passwordController = TextEditingController();
TextEditingController usernameController = TextEditingController();

//LOGIN PAGE
class Login extends StatelessWidget {
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
                    '<login>',
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
                    handler.authenticateUser(
                        usernameController.text, passwordController.text);
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
