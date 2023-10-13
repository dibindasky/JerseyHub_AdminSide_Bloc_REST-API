import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'ProductID')
  int? productId;
  @JsonKey(name: 'Stock')
  int? stock;

  Data({this.productId, this.stock});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
