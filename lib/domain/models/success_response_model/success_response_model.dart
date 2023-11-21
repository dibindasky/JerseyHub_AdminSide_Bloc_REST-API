import 'package:json_annotation/json_annotation.dart';

part 'success_response_model.g.dart';

@JsonSerializable()
class SuccessResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  SuccessResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory SuccessResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SuccessResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuccessResponseModelToJson(this);
}
