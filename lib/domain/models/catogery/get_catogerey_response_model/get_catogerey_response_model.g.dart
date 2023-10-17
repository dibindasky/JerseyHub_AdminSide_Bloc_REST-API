// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_catogerey_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCatogereyResponseModel _$GetCatogereyResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCatogereyResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetCatogereyResponseModelToJson(
        GetCatogereyResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
