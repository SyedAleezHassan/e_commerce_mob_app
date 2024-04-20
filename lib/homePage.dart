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
      home: SafeArea(
        child: Scaffold(
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
                height: 35,
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
              margin: const EdgeInsets.only(top: 140),
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
                  height: 120,
                  width: 120,
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
            //yahan se krna agr krna ho to
            Positioned(
              top: 280,
              left: 16,
              child: Container(
                height: 200, // Adjust the height according to your needs
                width: MediaQuery.of(context).size.width -
                    32, // Adjust the width according to your needs
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FruitCard(
                      name: 'Banana',
                      imageUrl: 'assets/banana.jpg',
                      quantity: '7',
                      price: '\$3.50',
                    ),
                    FruitCard(
                      name: 'Apple',
                      imageUrl: 'assets/apple.jpg',
                      quantity: '10',
                      price: '\$5.00',
                    ),
                    FruitCard(
                      name: 'Banana',
                      imageUrl: 'assets/banana.jpg',
                      quantity: '7',
                      price: '\$3.50',
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String quantity;
  final String price;

  FruitCard({
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 265,
        left: 12,
        child: Container(
          width: 150,
          height: 200,
          margin: EdgeInsets.all(11.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 239, 228, 228).withOpacity(0.5),
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
                height: 110,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(11.0),
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      quantity,
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 52,
                        ),
                        Container(
                          // margin: EdgeInsets.only(bottom: ),
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            'assets/plus.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
