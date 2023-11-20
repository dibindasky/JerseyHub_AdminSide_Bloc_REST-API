// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderDetailResponseModel _$GetOrderDetailResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetOrderDetailResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderDetail.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetOrderDetailResponseModelToJson(
        GetOrderDetailResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
