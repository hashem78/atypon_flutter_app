import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';
part 'grade.g.dart';

@freezed
class Grade with _$Grade {
  factory Grade(
    int id,
    // ignore: non_constant_identifier_names
    int class_id,
    // ignore: non_constant_identifier_names
    int user_id,
    double grade,
  ) = _Grade;

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
}
