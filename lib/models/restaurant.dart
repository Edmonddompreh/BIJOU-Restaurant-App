// lib/models/restaurant.dart

import 'package:json_annotation/json_annotation.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class Restaurant {
  final String id;
  final String name;
  final String cuisine;
  final double rating;
  final String deliveryTime;

  Restaurant({
    required this.id,
    required this.name,
    required this.cuisine,
    required this.rating,
    required this.deliveryTime,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
