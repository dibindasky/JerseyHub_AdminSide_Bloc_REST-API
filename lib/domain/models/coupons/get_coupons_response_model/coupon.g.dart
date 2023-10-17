// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
      couponId: json['ID'] as int?,
      createdAt: json['CreatedAt'] as String?,
      updatedAt: json['UpdatedAt'] as String?,
      deletedAt: json['DeletedAt'],
      coupon: json['coupon'] as String?,
      discountRate: json['discount_rate'] as int?,
      valid: json['valid'] as bool?,
    );

Map<String, dynamic> _$CouponToJson(Coupon instance) => <String, dynamic>{
      'ID': instance.couponId,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'coupon': instance.coupon,
      'discount_rate': instance.discountRate,
      'valid': instance.valid,
    };
