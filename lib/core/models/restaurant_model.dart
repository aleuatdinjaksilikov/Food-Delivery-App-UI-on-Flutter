import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class RestaurantModel {
  final String id;
  final String name;
  final String description;
  final String address;
  final double latitude;
  final double longitude;
  @JsonKey(name: "image_url")
  final String imageUrl;
  final double rating;
  @JsonKey(name: "opening_time")
  final String openingTime;
  @JsonKey(name: "closing_time")
  final String closingTime;
  @JsonKey(name: "is_active")
  final bool isActive;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "updated_at")
  final String updatedAt;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.imageUrl,
    required this.rating,
    required this.openingTime,
    required this.closingTime,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RestaurantModel.fromJson(Map<String,dynamic> json) => _$RestaurantModelFromJson(json);

  Map<String,dynamic> toJson() => _$RestaurantModelToJson(this);
}
