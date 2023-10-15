import 'package:json_annotation/json_annotation.dart';

part 'delete_inventory_qurrey.g.dart';

@JsonSerializable()
class DeleteInventoryQurrey {
  int id;

  DeleteInventoryQurrey({required this.id});

  factory DeleteInventoryQurrey.fromJson(Map<String, dynamic> json) {
    return _$DeleteInventoryQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteInventoryQurreyToJson(this);
}
