import 'package:freezed_annotation/freezed_annotation.dart';

import 'admin.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'Admin') Admin? admin,
    @JsonKey(name: 'AccessToken') String? accessToken,
    @JsonKey(name: 'RefreshToken') String? refreshToken,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
