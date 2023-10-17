import 'package:json_annotation/json_annotation.dart';

part 'update_inventory_image_response.g.dart';

@JsonSerializable()
class UpdateInventoryImageResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  UpdateInventoryImageResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory UpdateInventoryImageResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryImageResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateInventoryImageResponseToJson(this);
}
