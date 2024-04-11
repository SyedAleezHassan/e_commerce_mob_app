import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Image.asset(
        'assets/sales.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
