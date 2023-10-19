import 'package:json_annotation/json_annotation.dart';

part 'paymentMethod.g.dart';

@JsonSerializable()
class PaymentMethod {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'payment_name')
  String? paymentName;

  PaymentMethod({this.id, this.paymentName});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
