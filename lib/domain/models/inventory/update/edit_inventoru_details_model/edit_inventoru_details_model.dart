import 'package:json_annotation/json_annotation.dart';

part 'edit_inventoru_details_model.g.dart';

@JsonSerializable()
class EditInventoruDetailsModel {
  String? name;
  double? price;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? size;

  EditInventoruDetailsModel({
    this.name,
    this.price,
    this.categoryId,
    this.size,
  });

  factory EditInventoruDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$EditInventoruDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditInventoruDetailsModelToJson(this);
}
