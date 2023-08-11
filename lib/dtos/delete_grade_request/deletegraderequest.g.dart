// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletegraderequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteGradeRequest _$$_DeleteGradeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteGradeRequest(
      json['gradeId'] as int,
      json['classId'] as int,
      json['userId'] as int,
    );

Map<String, dynamic> _$$_DeleteGradeRequestToJson(
        _$_DeleteGradeRequest instance) =>
    <String, dynamic>{
      'gradeId': instance.gradeId,
      'classId': instance.classId,
      'userId': instance.userId,
    };
