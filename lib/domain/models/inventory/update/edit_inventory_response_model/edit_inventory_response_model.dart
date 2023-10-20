import 'package:json_annotation/json_annotation.dart';

part 'edit_inventory_response_model.g.dart';

@JsonSerializable()
class EditInventoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  EditInventoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory EditInventoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$EditInventoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditInventoryResponseModelToJson(this);
}
