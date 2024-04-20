import 'package:e_commerce_app/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 150,
                width: 140,
              ),
              TextField(),
              Container(
                height: 150,
                width: 200,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the second screen when the image is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  },
                  child: Image.asset(
                    'assets/google.png',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/facebook.png',
                fit: BoxFit.contain,
                height: 150,
                width: 100,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
