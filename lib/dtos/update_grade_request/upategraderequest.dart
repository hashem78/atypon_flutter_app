import 'package:freezed_annotation/freezed_annotation.dart';

part 'upategraderequest.freezed.dart';
part 'upategraderequest.g.dart';

@freezed
class UpateGradeRequest with _$UpateGradeRequest {
  factory UpateGradeRequest(
    int gradeId,
    int classId,
    int userId,
    double grade,
  ) = _UpateGradeRequest;

  factory UpateGradeRequest.fromJson(Map<String, dynamic> json) =>
      _$UpateGradeRequestFromJson(json);
}
