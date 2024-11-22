part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      id: json['id'] as String,
      name: json['name'] as String,
      cuisine: json['cuisine'] as String,
      rating: (json['rating'] as num).toDouble(),
      deliveryTime: json['deliveryTime'] as String,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cuisine': instance.cuisine,
      'rating': instance.rating,
      'deliveryTime': instance.deliveryTime,
    };
