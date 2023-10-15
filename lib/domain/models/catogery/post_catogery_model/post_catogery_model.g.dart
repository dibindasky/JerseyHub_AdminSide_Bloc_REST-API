// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_catogery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostCatogeryModel _$PostCatogeryModelFromJson(Map<String, dynamic> json) =>
    PostCatogeryModel(
      category: json['category'] as String,
    )..id = json['id'] as int;

Map<String, dynamic> _$PostCatogeryModelToJson(PostCatogeryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
    };
