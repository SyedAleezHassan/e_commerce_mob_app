import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Image.asset(
              'assets/food.png',
              height: 250,
              width: 250,
            ),
            Image.asset(
              'assets/getGroceryText.png',
              height: 50,
              width: 100,
            ),
            TextField(),
            Image.asset(
              'assets/google.png',
              height: 50,
              width: 120,
            ),
            Positioned(
              child: Image.asset(
                'assets/facebook.png',
                fit: BoxFit.contain,
                height: 50,
                width: 120,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
