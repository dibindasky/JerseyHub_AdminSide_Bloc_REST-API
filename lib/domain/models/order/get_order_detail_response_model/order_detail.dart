import 'package:json_annotation/json_annotation.dart';

import 'order_product.dart';

part 'order_detail.g.dart';

@JsonSerializable()
class OrderDetail {
  @JsonKey(name: 'OrderID')
  int? orderId;
  @JsonKey(name: 'Address')
  String? address;
  @JsonKey(name: 'Phone')
  String? phone;
  @JsonKey(name: 'Products')
  List<OrderProduct>? products;
  @JsonKey(name: 'TotalAmount')
  int? totalAmount;
  @JsonKey(name: 'CouponUsed')
  String? couponUsed;
  @JsonKey(name: 'OrderStatus')
  String? orderStatus;
  @JsonKey(name: 'PaymentStatus')
  String? paymentStatus;

  OrderDetail({
    this.orderId,
    this.address,
    this.phone,
    this.products,
    this.totalAmount,
    this.couponUsed,
    this.orderStatus,
    this.paymentStatus,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) => _$OrderDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);
}
