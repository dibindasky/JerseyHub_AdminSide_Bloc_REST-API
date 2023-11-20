// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      paymentMethod: json['payment_method'] as String?,
      total: (json['total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'payment_method': instance.paymentMethod,
      'total': instance.total,
    };
