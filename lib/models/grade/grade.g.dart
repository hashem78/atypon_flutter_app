// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Grade _$$_GradeFromJson(Map<String, dynamic> json) => _$_Grade(
      json['id'] as int,
      json['class_id'] as int,
      json['user_id'] as int,
      (json['grade'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GradeToJson(_$_Grade instance) => <String, dynamic>{
      'id': instance.id,
      'class_id': instance.class_id,
      'user_id': instance.user_id,
      'grade': instance.grade,
    };
