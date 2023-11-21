import 'package:json_annotation/json_annotation.dart';

part 'update_order_status_model.g.dart';

@JsonSerializable()
class UpdateOrderStatusModel {
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_status')
  String? orderStatus;

  UpdateOrderStatusModel({this.orderId, this.orderStatus});

  factory UpdateOrderStatusModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateOrderStatusModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateOrderStatusModelToJson(this);
}
