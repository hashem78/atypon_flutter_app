// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creategraderequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateGradeRequest _$$_CreateGradeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateGradeRequest(
      json['classId'] as int,
      json['userId'] as int,
      (json['grade'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CreateGradeRequestToJson(
        _$_CreateGradeRequest instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'userId': instance.userId,
      'grade': instance.grade,
    };
