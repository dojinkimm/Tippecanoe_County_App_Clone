import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Home(),
      imageBackground: AssetImage("assets/splash.png"),
      loaderColor: Colors.black,
    );
  }
}