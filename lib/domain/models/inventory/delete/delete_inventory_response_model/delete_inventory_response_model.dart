import 'package:json_annotation/json_annotation.dart';

part 'delete_inventory_response_model.g.dart';

@JsonSerializable()
class DeleteInventoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  DeleteInventoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory DeleteInventoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteInventoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteInventoryResponseModelToJson(this);
}
