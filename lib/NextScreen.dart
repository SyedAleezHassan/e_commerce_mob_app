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
          top: 100, // adjust the position as per your requirement
          left: 50, // adjust the position as per your requirement
          child: Image.asset(
            'assets/button.jpg', // replace with your overlay image path
            width: 200, // adjust width as per your requirement
            height: 200, // adjust height as per your requirement
            // You can also use other properties like alignment, colorBlendMode, etc.
          ),
        ),
      ],
    );
      }
}
