import 'dart:async';
import 'package:doctorgo_doctor/views/welcome_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(27, 91, 182, 1)),
          ),
          Center(
            child: Container(
              width: 130,
              height: 130,
              child: Image.asset("assets/images/DrGo_PNGsolologo.png")
            ),
          )
        ],
      ),
    );
  }
}
