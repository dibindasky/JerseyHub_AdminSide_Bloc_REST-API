// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderStatusModel _$UpdateOrderStatusModelFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderStatusModel(
      orderId: json['order_id'] as int?,
      orderStatus: json['order_status'] as String?,
    );

Map<String, dynamic> _$UpdateOrderStatusModelToJson(
        UpdateOrderStatusModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_status': instance.orderStatus,
    };
