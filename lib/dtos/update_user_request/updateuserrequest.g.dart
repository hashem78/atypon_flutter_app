// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateuserrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserRequest _$$_UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserRequest(
      json['id'] as int,
      email: json['email'] as String?,
      passwordHash: json['passwordHash'] as String?,
    );

Map<String, dynamic> _$$_UpdateUserRequestToJson(
        _$_UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
    };
