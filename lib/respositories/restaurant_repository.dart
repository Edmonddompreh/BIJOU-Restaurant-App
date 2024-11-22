// lib/repositories/restaurant_repository.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/restaurant.dart';

class RestaurantRepository {
  Future<List<Restaurant>> fetchRestaurants() async {
    // Simulate fetching data from an API
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    return [
      Restaurant(
          id: '1',
          name: 'Restaurant A',
          cuisine: 'Italian',
          rating: 4.5,
          deliveryTime: '30 min'),
      Restaurant(
          id: '2',
          name: 'Restaurant B',
          cuisine: 'Chinese',
          rating: 4.0,
          deliveryTime: '25 min'),
    ];
  }
}

// Define the provider for the RestaurantRepository
final restaurantRepositoryProvider = Provider<RestaurantRepository>((ref) {
  return RestaurantRepository();
});
