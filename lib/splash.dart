import 'package:e_commerce_app/NextScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => NextScreen()),
      );
    });
    return Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: [
            Positioned(
              top: 300,
              left: 80,
              child: Image.asset(
                'assets/logo.png',
                height: 220,
                width: 220,
              ),
            ),
            // SizedBox(height: 2),
            Positioned(
              top: 365,
              left: 140,
              child: Image.asset(
                'assets/text.png',
                height: 150,
                width: 150,
              ),
            ),
          ],
        ));
  }
}
