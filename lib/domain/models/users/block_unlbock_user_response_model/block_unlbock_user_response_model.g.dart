// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_unlbock_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockUnlbockUserResponseModel _$BlockUnlbockUserResponseModelFromJson(
        Map<String, dynamic> json) =>
    BlockUnlbockUserResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$BlockUnlbockUserResponseModelToJson(
        BlockUnlbockUserResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
