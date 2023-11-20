import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'orders.g.dart';

@JsonSerializable()
class Orders {
  @JsonKey(name: 'Pending')
  List<Order>? pending;
  @JsonKey(name: 'Shipped')
  List<Order>? shipped;
  @JsonKey(name: 'Delivered')
  List<Order>? delivered;
  @JsonKey(name: 'Canceled')
  List<Order>? canceled;
  @JsonKey(name: 'Returned')
  List<Order>? returned;

  Orders({
    this.pending,
    this.shipped,
    this.delivered,
    this.canceled,
    this.returned,
  });

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}
