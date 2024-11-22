import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfirstapp/features/auth/domain/restaurant_repository.dart';
import 'package:myfirstapp/models/restaurant.dart';
import 'package:myfirstapp/respositories/restaurant_repository.dart'
    hide RestaurantRepository;

class RestaurantsState {
  final List<Restaurant> restaurants;
  final bool isLoading;
  final String? error;

  RestaurantsState(
      {required this.restaurants, required this.isLoading, this.error});

  factory RestaurantsState.initial() {
    return RestaurantsState(restaurants: [], isLoading: false, error: null);
  }

  RestaurantsState copyWith(
      {List<Restaurant>? restaurants, bool? isLoading, String? error}) {
    return RestaurantsState(
      restaurants: restaurants ?? this.restaurants,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

final restaurantsProvider =
    StateNotifierProvider<RestaurantsNotifier, RestaurantsState>((ref) {
  return RestaurantsNotifier(ref.read(restaurantRepositoryProvider
      as ProviderListenable<RestaurantRepository>));
});

class RestaurantsNotifier extends StateNotifier<RestaurantsState> {
  final RestaurantRepository _repository;

  RestaurantsNotifier(this._repository) : super(RestaurantsState.initial());

  Future<void> fetchRestaurants() async {
    state = state.copyWith(isLoading: true);
    try {
      final restaurants = await _repository.getRestaurants();
      state = state.copyWith(restaurants: restaurants, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}
