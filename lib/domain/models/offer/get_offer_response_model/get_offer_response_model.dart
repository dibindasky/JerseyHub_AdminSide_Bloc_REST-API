import 'package:json_annotation/json_annotation.dart';

import 'offer.dart';

part 'get_offer_response_model.g.dart';

@JsonSerializable()
class GetOfferResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Offer>? data;
  dynamic error;

  GetOfferResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetOfferResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetOfferResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOfferResponseModelToJson(this);
}
