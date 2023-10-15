import 'package:json_annotation/json_annotation.dart';

part 'put_catogery_model.g.dart';

@JsonSerializable()
class PutCatogeryModel {
  String current;
  @JsonKey(name: 'new')
  String newName;

  PutCatogeryModel({required this.current, required this.newName});

  factory PutCatogeryModel.fromJson(Map<String, dynamic> json) {
    return _$PutCatogeryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PutCatogeryModelToJson(this);
}
