import 'package:json_annotation/json_annotation.dart';

part 'add_coupon_model.g.dart';

@JsonSerializable()
class AddCouponModel {
  String? coupon;
  @JsonKey(name: 'discount_rate')
  int? discountRate;
  bool valid;

  AddCouponModel({this.coupon, this.discountRate, this.valid = true});

  factory AddCouponModel.fromJson(Map<String, dynamic> json) {
    return _$AddCouponModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddCouponModelToJson(this);
}
