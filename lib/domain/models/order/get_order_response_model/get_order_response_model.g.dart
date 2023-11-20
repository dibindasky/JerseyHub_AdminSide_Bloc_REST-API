// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderResponseModel _$GetOrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetOrderResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Orders.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetOrderResponseModelToJson(
        GetOrderResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
