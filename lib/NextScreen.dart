import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzwOW-DydbZFUnC-Pq7FRCWRSxEAVZgVEuG4YTuW_prw&s'),
    );
  }
}