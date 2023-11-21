// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) => OrderProduct(
      productName: json['ProductName'] as String?,
      image: json['Image'] as String?,
      quantity: json['Quantity'] as int?,
      amount: (json['Amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderProductToJson(OrderProduct instance) =>
    <String, dynamic>{
      'ProductName': instance.productName,
      'Image': instance.image,
      'Quantity': instance.quantity,
      'Amount': instance.amount,
    };
