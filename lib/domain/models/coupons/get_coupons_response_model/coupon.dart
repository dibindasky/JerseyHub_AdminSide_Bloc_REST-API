import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable()
class Coupon {
  @JsonKey(name: 'ID')
  int? couponId;
  @JsonKey(name: 'CreatedAt')
  String? createdAt;
  @JsonKey(name: 'UpdatedAt')
  String? updatedAt;
  @JsonKey(name: 'DeletedAt')
  dynamic deletedAt;
  String? coupon;
  @JsonKey(name: 'discount_rate')
  int? discountRate;
  bool? valid;

  Coupon({
    this.couponId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.coupon,
    this.discountRate,
    this.valid,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

  Map<String, dynamic> toJson() => _$CouponToJson(this);
}
