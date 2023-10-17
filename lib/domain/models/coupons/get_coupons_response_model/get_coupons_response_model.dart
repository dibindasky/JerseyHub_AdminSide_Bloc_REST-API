import 'package:json_annotation/json_annotation.dart';

import 'coupon.dart';

part 'get_coupons_response_model.g.dart';

@JsonSerializable()
class GetCouponsResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Coupon>? data;
  dynamic error;

  GetCouponsResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCouponsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCouponsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCouponsResponseModelToJson(this);
}
