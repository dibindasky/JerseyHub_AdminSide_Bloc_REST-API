import 'package:json_annotation/json_annotation.dart';

part 'add_offer_model.g.dart';

@JsonSerializable()
class AddOfferModel {
  @JsonKey(name: 'category_id')
  int? categoryId;
  int? discount;

  AddOfferModel({this.categoryId, this.discount});

  factory AddOfferModel.fromJson(Map<String, dynamic> json) {
    return _$AddOfferModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddOfferModelToJson(this);
}
