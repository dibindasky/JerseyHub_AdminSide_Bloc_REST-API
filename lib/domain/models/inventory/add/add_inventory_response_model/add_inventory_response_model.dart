import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'add_inventory_response_model.g.dart';

@JsonSerializable()
class AddInventoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  AddInventoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory AddInventoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AddInventoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddInventoryResponseModelToJson(this);
}
