import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_catogerey_response_model.g.dart';

@JsonSerializable()
class GetCatogereyResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetCatogereyResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCatogereyResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCatogereyResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCatogereyResponseModelToJson(this);
}
