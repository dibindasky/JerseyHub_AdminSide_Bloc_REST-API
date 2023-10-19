import 'package:json_annotation/json_annotation.dart';

import 'paymentMethod.dart';

part 'get_payment_method_response.g.dart';

@JsonSerializable()
class GetPaymentMethodResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<PaymentMethod>? data;
  dynamic error;

  GetPaymentMethodResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetPaymentMethodResponse.fromJson(Map<String, dynamic> json) {
    return _$GetPaymentMethodResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPaymentMethodResponseToJson(this);
}
