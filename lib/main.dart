// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/tips/getStart.dart';
import 'package:food_app/pages/tips/tips.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new GetStart(),
        title: const Text(
          'Bienvenue dans ShipiLiyaa !',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colors.white,
              fontFamily: 'WaterBrush'),
        ),
        image: Image.asset('images/home.png'),
        backgroundColor: PrimaryColor,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.white);
    ;
  }
}
