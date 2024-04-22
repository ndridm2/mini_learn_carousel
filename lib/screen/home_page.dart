import 'package:flutter/material.dart';
import '/widgets/custome_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  final List<Map<String, String>> images = [
    {"image": "assets/img/image1.JPG", "title": ""},
    {"image": "assets/img/image12.JPG", "title": ""},
    {"image": "assets/img/image3.JPG", "title": ""},
    {"image": "assets/img/image11.JPG", "title": ""},
    {"image": "assets/img/image5.JPG", "title": ""},
    {"image": "assets/img/image10.JPG", "title": ""},
    {"image": "assets/img/image7.JPG", "title": ""},
    {"image": "assets/img/image8.JPG", "title": ""},
    {"image": "assets/img/image4.JPG", "title": ""},
    {"image": "assets/img/image6.JPG", "title": ""},
    {"image": "assets/img/image9.JPG", "title": ""},
    {"image": "assets/img/image2.JPG", "title": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.1,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 24.0,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 7,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Bouquets",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              padding: const EdgeInsets.all(10),
              child: CustomeCarousel(
                visible: 3,
                borderRadius: 20,
                slideAnimationDuration: 500,
                titleFadeAnimationDuration: 300,
                childClick: (int index) {
                  // ignore: avoid_print
                  print("Clicked $index");
                },
                children: images,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
