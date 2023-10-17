import 'package:json_annotation/json_annotation.dart';

part 'update_inventory_image_qurrey.g.dart';

@JsonSerializable()
class UpdateInventoryImageQurrey {
  int? id;

  UpdateInventoryImageQurrey({this.id});

  factory UpdateInventoryImageQurrey.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryImageQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateInventoryImageQurreyToJson(this);
}
