// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inventory_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInventoryResponseModel _$AddInventoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddInventoryResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$AddInventoryResponseModelToJson(
        AddInventoryResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
