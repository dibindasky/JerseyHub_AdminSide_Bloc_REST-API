// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCouponModel _$AddCouponModelFromJson(Map<String, dynamic> json) =>
    AddCouponModel(
      coupon: json['coupon'] as String?,
      discountRate: json['discount_rate'] as int?,
      valid: json['valid'] as bool? ?? true,
    );

Map<String, dynamic> _$AddCouponModelToJson(AddCouponModel instance) =>
    <String, dynamic>{
      'coupon': instance.coupon,
      'discount_rate': instance.discountRate,
      'valid': instance.valid,
    };
