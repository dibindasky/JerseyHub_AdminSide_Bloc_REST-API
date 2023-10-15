import 'package:json_annotation/json_annotation.dart';

part 'post_catogery_model.g.dart';

@JsonSerializable()
class PostCatogeryModel {
  int id = 0;
  String category;

  PostCatogeryModel({required this.category});

  factory PostCatogeryModel.fromJson(Map<String, dynamic> json) {
    return _$PostCatogeryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostCatogeryModelToJson(this);
}
