import 'package:json_annotation/json_annotation.dart';

part 'block_unlbock_user_response_model.g.dart';

@JsonSerializable()
class BlockUnlbockUserResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  BlockUnlbockUserResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory BlockUnlbockUserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BlockUnlbockUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUnlbockUserResponseModelToJson(this);
}
