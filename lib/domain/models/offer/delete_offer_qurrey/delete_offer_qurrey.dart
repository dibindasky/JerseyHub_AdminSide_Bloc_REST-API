import 'package:json_annotation/json_annotation.dart';

part 'delete_offer_qurrey.g.dart';

@JsonSerializable()
class DeleteOfferQurrey {
  @JsonKey(name: 'id')
  int? offerId;

  DeleteOfferQurrey({this.offerId});

  factory DeleteOfferQurrey.fromJson(Map<String, dynamic> json) {
    return _$DeleteOfferQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteOfferQurreyToJson(this);
}
