import 'package:json_annotation/json_annotation.dart';

import 'orders.dart';

part 'get_order_response_model.g.dart';

@JsonSerializable()
class GetOrderResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Orders? data;
  dynamic error;

  GetOrderResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetOrderResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrderResponseModelToJson(this);
}
