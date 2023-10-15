import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'update_inventory_response_model.g.dart';

@JsonSerializable()
class UpdateInventoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  UpdateInventoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory UpdateInventoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateInventoryResponseModelToJson(this);
}
