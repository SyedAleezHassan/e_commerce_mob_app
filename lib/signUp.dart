import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Container(
            child: Image.asset(
              'assets/google.png',
              height: 100,
              width: 200,
            ),
            margin: EdgeInsets.only(bottom: 5),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Image.asset(
              'assets/facebook.png',
              height: 100,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
