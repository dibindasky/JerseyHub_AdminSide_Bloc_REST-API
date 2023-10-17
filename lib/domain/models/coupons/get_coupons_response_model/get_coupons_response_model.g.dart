// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupons_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponsResponseModel _$GetCouponsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCouponsResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetCouponsResponseModelToJson(
        GetCouponsResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
