// lib/mock_api/mock_api_service.dart

import 'dart:async';
import 'package:myfirstapp/models/restaurant.dart';

class MockApiService {
  static const _delay = Duration(milliseconds: 800);

  Future<List<Restaurant>> getRestaurants() async {
    await Future.delayed(_delay);
    return [
      Restaurant(
          id: '1',
          name: 'Pizza Palace',
          cuisine: 'Italian',
          rating: 4.5,
          deliveryTime: '30-40 min'),
      Restaurant(
          id: '2',
          name: 'Sushi World',
          cuisine: 'Japanese',
          rating: 4.8,
          deliveryTime: '20-30 min'),
      Restaurant(
          id: '3',
          name: 'Taco Town',
          cuisine: 'Mexican',
          rating: 4.2,
          deliveryTime: '15-25 min'),
      // Additional mock restaurant data
    ];
  }

  Future<Restaurant> getRestaurantDetails(String id) async {
    await Future.delayed(_delay);
    return Restaurant(
        id: id,
        name: 'Mock Restaurant',
        cuisine: 'Mock Cuisine',
        rating: 4.5,
        deliveryTime: '30 min');
  }

  // Add other mock endpoints as needed
}
