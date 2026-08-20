import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String id;
  @JsonKey(name: "restaurant_id")
  final String restaurantId;
  final String name;
  final String description;
  @JsonKey(name: "price_in_tiyin")
  final int priceInTiyin;
  @JsonKey(name: "image_url")
  final String imageUrl;
  final String category;
  @JsonKey(name: "is_available")
  final bool isAvailable;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "updated_at")
  final String updatedAt;

  ProductModel({
    required this.id,
    required this.restaurantId,
    required this.name,
    required this.description,
    required this.priceInTiyin,
    required this.imageUrl,
    required this.category,
    required this.isAvailable,
    required this.createdAt,
    required this.updatedAt,
  });

  
  factory ProductModel.fromJson(Map<String,dynamic> json) => _$ProductModelFromJson(json);

  Map<String,dynamic> toJson() => _$ProductModelToJson(this);
}
