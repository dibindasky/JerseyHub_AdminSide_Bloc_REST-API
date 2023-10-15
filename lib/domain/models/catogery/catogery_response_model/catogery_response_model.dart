import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'catogery_response_model.g.dart';

@JsonSerializable()
class CatogeryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  CatogeryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory CatogeryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CatogeryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CatogeryResponseModelToJson(this);
}
