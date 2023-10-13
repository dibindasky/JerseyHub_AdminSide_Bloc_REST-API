// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_inventory_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteInventoryResponseModel _$DeleteInventoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeleteInventoryResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$DeleteInventoryResponseModelToJson(
        DeleteInventoryResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
