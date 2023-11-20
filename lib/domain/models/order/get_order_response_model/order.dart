import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  int? id;
  String? name;
  String? address;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  double? total;

  Order({
    this.id,
    this.name,
    this.address,
    this.paymentMethod,
    this.total,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return _$OrderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
