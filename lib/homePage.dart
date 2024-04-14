import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 30,
          left: MediaQuery.of(context).size.width / 2,
          child: Image.asset(
            'assets/gajar.png',
            height: 30,
            width: 30,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2.7,
          top: 40,
          child: Image.asset(
            'assets/dhaka.png',
            height: 70,
            width: 100,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 90),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            //width: MediaQuery.of(context).size.width /1.3,
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Search Store',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
