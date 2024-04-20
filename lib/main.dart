import 'package:e_commerce_app/NextScreen.dart';
import 'package:e_commerce_app/homePage.dart';
import 'package:e_commerce_app/signUp.dart';
import 'package:e_commerce_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
