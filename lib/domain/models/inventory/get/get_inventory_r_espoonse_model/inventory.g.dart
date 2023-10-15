// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) => Inventory(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      image: json['image'] as String?,
      productName: json['product_name'] as String?,
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: json['price'] as int?,
      discountedPrice: json['discounted_price'] as int?,
    );

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'image': instance.image,
      'product_name': instance.productName,
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'discounted_price': instance.discountedPrice,
    };
