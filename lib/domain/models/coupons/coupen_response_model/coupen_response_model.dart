import 'package:json_annotation/json_annotation.dart';

part 'coupen_response_model.g.dart';

@JsonSerializable()
class CoupenResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  CoupenResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory CoupenResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CoupenResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoupenResponseModelToJson(this);
}
