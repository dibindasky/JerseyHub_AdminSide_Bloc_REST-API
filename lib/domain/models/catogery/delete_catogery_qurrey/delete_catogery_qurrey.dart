import 'package:json_annotation/json_annotation.dart';

part 'delete_catogery_qurrey.g.dart';

@JsonSerializable()
class DeleteCatogeryQurrey {
  int id;

  DeleteCatogeryQurrey({required this.id});

  factory DeleteCatogeryQurrey.fromJson(Map<String, dynamic> json) {
    return _$DeleteCatogeryQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteCatogeryQurreyToJson(this);
}
