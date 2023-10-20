// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_inventory_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditInventoryResponseModel _$EditInventoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    EditInventoryResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$EditInventoryResponseModelToJson(
        EditInventoryResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
