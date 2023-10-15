import 'package:json_annotation/json_annotation.dart';

import 'inventory.dart';

part 'get_inventory_response_model.g.dart';

@JsonSerializable()
class GetInventoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  List<Inventory>? data;
  dynamic error;

  GetInventoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetInventoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetInventoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetInventoryResponseModelToJson(this);
}
