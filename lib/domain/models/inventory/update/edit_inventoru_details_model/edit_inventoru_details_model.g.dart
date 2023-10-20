// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_inventoru_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditInventoruDetailsModel _$EditInventoruDetailsModelFromJson(
        Map<String, dynamic> json) =>
    EditInventoruDetailsModel(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      categoryId: json['category_id'] as int?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$EditInventoruDetailsModelToJson(
        EditInventoruDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'category_id': instance.categoryId,
      'size': instance.size,
    };
