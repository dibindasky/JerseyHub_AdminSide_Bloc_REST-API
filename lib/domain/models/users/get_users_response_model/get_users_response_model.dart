import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'get_users_response_model.g.dart';

@JsonSerializable()
class GetUsersResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  List<User>? users;
  dynamic error;

  GetUsersResponseModel({
    this.statusCode,
    this.message,
    this.users,
    this.error,
  });

  factory GetUsersResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetUsersResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUsersResponseModelToJson(this);
}
