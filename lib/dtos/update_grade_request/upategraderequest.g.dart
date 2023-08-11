// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upategraderequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpateGradeRequest _$$_UpateGradeRequestFromJson(Map<String, dynamic> json) =>
    _$_UpateGradeRequest(
      json['gradeId'] as int,
      json['classId'] as int,
      json['userId'] as int,
      (json['grade'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UpateGradeRequestToJson(
        _$_UpateGradeRequest instance) =>
    <String, dynamic>{
      'gradeId': instance.gradeId,
      'classId': instance.classId,
      'userId': instance.userId,
      'grade': instance.grade,
    };
