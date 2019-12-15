import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Learnify());

class Learnify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
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
                  color: const Color(0xff99216203),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Image.asset('assets/images/4.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Text(
                "Hfioa Jfafa jifoj OAjofjaiofj",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "hIhiofea fioeaj fiojs fjasiof acnioafioeaw fjoiea fjoeiafjeaioc jeiaof jeaiofjasio fjasklcjnaeiosjioasjfoi sajc iosajcioasejf ioeajsfi sajicm",
                style: TextStyle(fontSize: 14),
              ),
            ),
            RaisedButton(
              child: Text('start learning'),
              color: Colors.blueGrey[900],
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
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
            Image.asset('assets/images/4.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Text(
                "Hfioa Jfafa jifoj OAjofjaiofj",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "hIhiofea fioeaj fiojs fjasiof acnioafioeaw fjoiea fjoeiafjeaioc jeiaof jeaiofjasio fjasklcjnaeiosjioasjfoi sajc iosajcioasejf ioeajsfi sajicm",
                style: TextStyle(fontSize: 14),
              ),
            ),
            RaisedButton(
              child: Text('start learning'),
              color: Colors.blueGrey[900],
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
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
                  color: const Color(0xff99216203),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                ),
              ),
            ),
            Image.asset('assets/images/4.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Text(
                "Hfioa Jfafa jifoj OAjofjaiofj",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "hIhiofea fioeaj fiojs fjasiof acnioafioeaw fjoiea fjoeiafjeaioc jeiaof jeaiofjasio fjasklcjnaeiosjioasjfoi sajc iosajcioasejf ioeajsfi sajicm",
                style: TextStyle(fontSize: 14),
              ),
            ),
            RaisedButton(
              child: Text('start learning'),
              color: Colors.blueGrey[900],
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

//LOGIN PAGE
class FourthScreen extends StatelessWidget {
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
                    '<start coding today>',
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 25.0),
                child: RaisedButton(
                  child: Text('sign up'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FifthScreen()));
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

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[Text('Dashboard')],
          ),
        ),
      ),
    );
  }
}
