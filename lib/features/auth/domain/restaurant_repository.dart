// lib/features/restaurants/domain/restaurant_repository.dart

import 'package:myfirstapp/mock_api/mock_api_service.dart';
import 'package:myfirstapp/models/restaurant.dart';

class RestaurantRepository {
  final MockApiService _apiService;

  RestaurantRepository(this._apiService);

  Future<List<Restaurant>> getRestaurants() {
    return _apiService.getRestaurants();
  }

  Future<Restaurant> getRestaurantDetails(String id) {
    return _apiService.getRestaurantDetails(id);
  }
}
