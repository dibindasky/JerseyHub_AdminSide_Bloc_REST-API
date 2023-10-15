// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catogery_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatogeryResponseModel _$CatogeryResponseModelFromJson(
        Map<String, dynamic> json) =>
    CatogeryResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$CatogeryResponseModelToJson(
        CatogeryResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
