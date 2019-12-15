import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify/CommandHandler.dart';
import 'package:learnify/onboarding2.dart';
import 'package:learnify/onboarding1.dart';
import 'package:learnify/onboarding3.dart';
import 'package:learnify/dashboard.dart';
import 'package:learnify/question1.dart';
import 'package:learnify/login.dart';

void main() => runApp(Learnify());

class Learnify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding1(),
    );
  }
}
