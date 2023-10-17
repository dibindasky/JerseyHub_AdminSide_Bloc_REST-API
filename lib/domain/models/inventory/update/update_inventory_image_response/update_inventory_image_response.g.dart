// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInventoryImageResponse _$UpdateInventoryImageResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateInventoryImageResponse(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$UpdateInventoryImageResponseToJson(
        UpdateInventoryImageResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
