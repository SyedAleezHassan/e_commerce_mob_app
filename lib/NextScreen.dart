import 'package:e_commerce_app/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background image
        Image.asset(
          'assets/sales.jpg', // replace with your background image path
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        // Overlay image
        Positioned(
          top: 550,
          right: 20,
          child: GestureDetector(
            onTap: () {
              // Navigate to the second screen when the image is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signUp()),
              );
            },
            child: Image.asset(
              'assets/button.png',
              width: 350,
              height: 250,
            ),
          ),
        ),

        Positioned(
          top: 450,
          left: 100,
          child: Image.asset(
            'assets/text2.png',
            width: 200,
            height: 200,
          ),
        ),
        Positioned(
          top: 440, // adjust the position as per your requirement
          left: 180,
          child: Image.asset(
            'assets/Vector.png',
          ),
        ),
      ],
    );
  }
}
