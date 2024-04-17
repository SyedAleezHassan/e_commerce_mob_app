import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<String> images = [
    'assets/slider.jpg',
    'assets/slider.jpg',
    'assets/slider.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            margin: const EdgeInsets.only(top: 90),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              //width: MediaQuery.of(context).size.width /1.3,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Search Store',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          //..................image work Start###########
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 90.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: images.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          //margin: EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Positioned(
              left: 15,
              top: 200,
              child: Image.asset(
                'assets/offer.png',
                height: 100,
                width: 100,
              )),
          Positioned(
            top: 237,
            right: 20,
            child: InkWell(
              onTap: () {},
              child: const Text(
                "See all",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
