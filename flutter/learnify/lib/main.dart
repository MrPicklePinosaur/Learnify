import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/Onboarding2.dart';
import 'package:learnify/Onboarding1.dart';
import 'package:learnify/Onboarding3.dart';
import 'package:learnify/Dashboard.dart';
import 'package:learnify/Question1.dart';
import 'package:learnify/Login.dart';

void main() => runApp(Learnify());

class Learnify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding1()
    );
  }
}
