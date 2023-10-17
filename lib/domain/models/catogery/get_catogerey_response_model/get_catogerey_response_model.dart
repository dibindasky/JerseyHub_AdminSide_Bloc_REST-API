import 'package:jerseyhub_admin/domain/models/catogery/catogery_response_model/category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_catogerey_response_model.g.dart';

@JsonSerializable()
class GetCatogereyResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Category>? data;
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
