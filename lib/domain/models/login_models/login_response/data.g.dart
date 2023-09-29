// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      admin: json['Admin'] == null
          ? null
          : Admin.fromJson(json['Admin'] as Map<String, dynamic>),
      accessToken: json['AccessToken'] as String?,
      refreshToken: json['RefreshToken'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'Admin': instance.admin,
      'AccessToken': instance.accessToken,
      'RefreshToken': instance.refreshToken,
    };
