import 'package:json_annotation/json_annotation.dart';

part 'block_unblock_user_qurrey.g.dart';

@JsonSerializable()
class BlockUnblockUserQurrey {
  int? id;

  BlockUnblockUserQurrey({this.id});

  factory BlockUnblockUserQurrey.fromJson(Map<String, dynamic> json) {
    return _$BlockUnblockUserQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUnblockUserQurreyToJson(this);
}
