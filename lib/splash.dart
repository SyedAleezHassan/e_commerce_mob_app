import 'package:e_commerce_app/NextScreen.dart';
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
        body: Column(
      children: [
     
        Expanded(
          child: Container(
            child: Image.asset('assets/logo.png'),
            color: Colors.green,
            
          ),
        ),
        
      ],
    ));
  }
}
