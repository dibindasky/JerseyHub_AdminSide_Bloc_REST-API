import 'package:json_annotation/json_annotation.dart';

import 'order_detail.dart';

part 'get_order_detail_response_model.g.dart';

@JsonSerializable()
class  GetOrderDetailResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  OrderDetail? data;
  dynamic error;

  GetOrderDetailResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetOrderDetailResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderDetailResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrderDetailResponseModelToJson(this);
}
