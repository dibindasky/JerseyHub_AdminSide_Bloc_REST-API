// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessResponseModel _$SuccessResponseModelFromJson(
        Map<String, dynamic> json) =>
    SuccessResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$SuccessResponseModelToJson(
        SuccessResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
