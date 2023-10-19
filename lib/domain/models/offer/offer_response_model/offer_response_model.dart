import 'package:json_annotation/json_annotation.dart';

part 'offer_response_model.g.dart';

@JsonSerializable()
class OfferResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  OfferResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory OfferResponseModel.fromJson(Map<String, dynamic> json) {
    return _$OfferResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OfferResponseModelToJson(this);
}
