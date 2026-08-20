// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: json['id'] as String,
  restaurantId: json['restaurant_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  priceInTiyin: (json['price_in_tiyin'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  category: json['category'] as String,
  isAvailable: json['is_available'] as bool,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'price_in_tiyin': instance.priceInTiyin,
      'image_url': instance.imageUrl,
      'category': instance.category,
      'is_available': instance.isAvailable,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
