import 'package:json_annotation/json_annotation.dart';

part 'edit_inventory_details_qurrey.g.dart';

@JsonSerializable()
class EditInventoryDetailsQurrey {
  int? id;

  EditInventoryDetailsQurrey({this.id});

  factory EditInventoryDetailsQurrey.fromJson(Map<String, dynamic> json) {
    return _$EditInventoryDetailsQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditInventoryDetailsQurreyToJson(this);
}
