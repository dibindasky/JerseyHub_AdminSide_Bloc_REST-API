import 'package:json_annotation/json_annotation.dart';

part 'add_payment_methhod.g.dart';

@JsonSerializable()
class AddPaymentMethhod {
  @JsonKey(name: 'payment_method')
  String? paymentMethod;

  AddPaymentMethhod({this.paymentMethod});

  factory AddPaymentMethhod.fromJson(Map<String, dynamic> json) {
    return _$AddPaymentMethhodFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddPaymentMethhodToJson(this);
}
