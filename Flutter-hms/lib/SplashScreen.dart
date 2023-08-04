import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hms/navigationbar/mainpage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void setState(fn) {
    Timer(
      Duration(seconds: 2),
          () =>
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => MainPage())));
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: AnimatedSplashScreen(
            backgroundColor: Color(0xffC5CEE0),
            splash: Container(
              child: Image.asset('assets/logo.png',
              height: 200,
              fit: BoxFit.fitHeight,
              )),
            nextScreen: MainPage(),
            splashTransition: SplashTransition.scaleTransition,
          ),
        ),
      ),
    );
  }
}
