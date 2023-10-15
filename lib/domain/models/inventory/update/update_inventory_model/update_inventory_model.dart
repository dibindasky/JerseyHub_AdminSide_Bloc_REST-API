import 'package:json_annotation/json_annotation.dart';

part 'update_inventory_model.g.dart';

@JsonSerializable()
class UpdateInventoryModel {
  @JsonKey(name: 'product_id')
  int productId;
  int stock;

  UpdateInventoryModel({required this.productId, required this.stock});

  factory UpdateInventoryModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateInventoryModelToJson(this);
}
