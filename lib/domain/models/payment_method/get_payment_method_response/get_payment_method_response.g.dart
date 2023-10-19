// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPaymentMethodResponse _$GetPaymentMethodResponseFromJson(
        Map<String, dynamic> json) =>
    GetPaymentMethodResponse(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetPaymentMethodResponseToJson(
        GetPaymentMethodResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
