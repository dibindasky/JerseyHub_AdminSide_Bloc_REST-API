import 'package:json_annotation/json_annotation.dart';

part 'coupon_activate_qurrey.g.dart';

@JsonSerializable()
class CouponActivateQurrey {
  int? id;

  CouponActivateQurrey({this.id});

  factory CouponActivateQurrey.fromJson(Map<String, dynamic> json) {
    return _$CouponActivateQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponActivateQurreyToJson(this);
}
