// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferResponseModel _$OfferResponseModelFromJson(Map<String, dynamic> json) =>
    OfferResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$OfferResponseModelToJson(OfferResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
