// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createuserrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserRequest _$$_CreateUserRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateUserRequest(
      json['email'] as String,
      json['passwordHash'] as String,
    );

Map<String, dynamic> _$$_CreateUserRequestToJson(
        _$_CreateUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'passwordHash': instance.passwordHash,
    };
