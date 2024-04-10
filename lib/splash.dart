import 'package:e_commerce_app/NextScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => NextScreen()),
      );
    });
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 50, 180, 54),
          child: Image.asset('assets/logo.jpg'),
        )
      ],
    ));
  }
}
