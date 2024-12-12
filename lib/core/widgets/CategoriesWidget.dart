import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final List<String> categories = [
    "assets/images/bg2HD.png",
    "assets/images/bg3.png",
    "assets/images/bg4.png",
    "assets/images/bg1.png",
    "assets/images/bg8.png",
    "assets/images/bg5.png",
    "assets/images/bg6.png",
    "assets/images/bg7.png",
    "assets/images/bgAI.png",
    "assets/images/pizza.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: categories.map((category) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset(
                  category,
                  width: 50,
                  height: 50,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
