// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInventoryModel _$UpdateInventoryModelFromJson(
        Map<String, dynamic> json) =>
    UpdateInventoryModel(
      productId: json['product_id'] as int,
      stock: json['stock'] as int,
    );

Map<String, dynamic> _$UpdateInventoryModelToJson(
        UpdateInventoryModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'stock': instance.stock,
    };
