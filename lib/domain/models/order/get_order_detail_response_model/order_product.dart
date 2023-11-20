import 'package:json_annotation/json_annotation.dart';

part 'order_product.g.dart';

@JsonSerializable()
class OrderProduct {
  @JsonKey(name: 'ProductName')
  String? productName;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'Quantity')
  int? quantity;
  @JsonKey(name: 'Amount')
  int? amount;

  OrderProduct({this.productName, this.image, this.quantity, this.amount});

  factory OrderProduct.fromJson(Map<String, dynamic> json) {
    return _$OrderProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderProductToJson(this);
}
