import 'package:json_annotation/json_annotation.dart';

part 'delete_coupen_qurrey.g.dart';

@JsonSerializable()
class DeleteCoupenQurrey {
  @JsonKey(name: 'id')
  int? couponId;

  DeleteCoupenQurrey({this.couponId});

  factory DeleteCoupenQurrey.fromJson(Map<String, dynamic> json) {
    return _$DeleteCoupenQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteCoupenQurreyToJson(this);
}
