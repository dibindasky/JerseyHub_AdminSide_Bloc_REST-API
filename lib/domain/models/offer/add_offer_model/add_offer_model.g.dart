// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOfferModel _$AddOfferModelFromJson(Map<String, dynamic> json) =>
    AddOfferModel(
      categoryId: json['category_id'] as int?,
      discount: json['discount'] as int?,
    );

Map<String, dynamic> _$AddOfferModelToJson(AddOfferModel instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'discount': instance.discount,
    };
