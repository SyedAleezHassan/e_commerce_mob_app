import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

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
          Positioned(
              top: 265,
              left: 12,
              child: Container(
                width: 100,
                height: 140,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 239, 228, 228).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // Shadow position, bottom right
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(4.0),
                        ),
                        child: Image.asset(
                          'assets/banana.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'banana',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.0),
                          Text(
                            'Quantity: 4',
                            style: TextStyle(
                              fontSize: 8.0,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 1.0),
                          Text(
                            'Price: 15',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
