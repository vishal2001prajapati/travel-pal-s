import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelpals/splash_screen/welcome_screen.dart';
import 'package:travelpals/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelComeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                ConstColors.PrimaryGradientColorTwo,
                ConstColors.PrimaryGradientColorOne
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0)),
        ),
        child: Center(child: Image.asset('images/ic_splash.png')),
      ),
    );
  }
}
