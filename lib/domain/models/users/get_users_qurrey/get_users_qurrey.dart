import 'package:json_annotation/json_annotation.dart';

part 'get_users_qurrey.g.dart';

@JsonSerializable()
class GetUsersQurrey {
  int? page;

  GetUsersQurrey({this.page});

  factory GetUsersQurrey.fromJson(Map<String, dynamic> json) {
    return _$GetUsersQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUsersQurreyToJson(this);
}
