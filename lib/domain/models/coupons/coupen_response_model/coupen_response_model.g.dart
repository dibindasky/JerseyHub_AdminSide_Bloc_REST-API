// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupen_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoupenResponseModel _$CoupenResponseModelFromJson(Map<String, dynamic> json) =>
    CoupenResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$CoupenResponseModelToJson(
        CoupenResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
