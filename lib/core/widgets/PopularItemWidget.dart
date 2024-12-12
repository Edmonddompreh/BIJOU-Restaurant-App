import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  final List<Map<String, String>> popularItems = [
    {
      "image": "assets/images/bgHD.png",
      "title": "Loaded Fries",
      "description": "Enjoy our tasty cheesy loaded fries",
      "price": "₵70 & ₵100",
    },
    {
      "image": "assets/images/bg3.png",
      "title": "Spicy Yam Chops",
      "description": "Diamonds on your plate",
      "price": "₵60 & ₵70",
    },
    {
      "image": "assets/images/bg4.png",
      "title": "Fried Rice",
      "description": "Tasty Fried Rice with drum stick",
      "price": "₵70 & ₵100",
    },
    {
      "image": "assets/images/bg2HD.png",
      "title": "French Tacos",
      "description": "Tasty French tacos",
      "price": "₵60 & ₵70",
    },
    {
      "image": "assets/images/bg6.png",
      "title": "Drum Sticks",
      "description": "Crunchy fried chicken with hot sauce",
      "price": "₵170",
    },
    {
      "image": "assets/images/bg7.png",
      "title": "Fries with Chickens",
      "description": "Tasty Fried Rice with drum stick",
      "price": "₵70",
    },
    {
      "image": "assets/images/bg7.png",
      "title": "Vals Potato",
      "description": "Tasty Fries chips with drum stick",
      "price": "₵70",
    },
    {
      "image": "assets/images/bg8.png",
      "title": "Loaded Fried Rice",
      "description": "Tasty Fried Rice with Coca-Cola",
      "price": "₵70",
    },
    {
      "image": "assets/images/bgAI.png",
      "title": "Burger King",
      "description": "Enjoy tasty cheesy burger",
      "price": "₵90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: popularItems.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          item["image"]!,
                          height: 100,
                        ),
                      ),
                      Text(
                        item["title"]!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        item["description"]!,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item["price"]!,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
