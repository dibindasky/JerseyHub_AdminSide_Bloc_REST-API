import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name: 'status_code') int? statusCode,
    String? message,
    Data? data,
    dynamic error,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
