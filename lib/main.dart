// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myfirstapp/features/auth/presentation/bijou_welcome_screen.dart';
import 'package:myfirstapp/respositories/restaurant_repository.dart';
import 'models/restaurant.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BijouWelcomeScreen(),
    );
  }
}

class RestaurantListScreen extends ConsumerWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final restaurantRepository = ref.watch(restaurantRepositoryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Restaurants')),
      body: FutureBuilder<List<Restaurant>>(
        future: restaurantRepository.fetchRestaurants(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No restaurants found.'));
          }

          final restaurants = snapshot.data!;
          return ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              final restaurant = restaurants[index];
              return ListTile(
                title: Text(restaurant.name),
                subtitle:
                    Text('${restaurant.cuisine} - ${restaurant.rating} Stars'),
              );
            },
          );
        },
      ),
    );
  }
}
