import 'package:freezed_annotation/freezed_annotation.dart';

part 'deletegraderequest.freezed.dart';
part 'deletegraderequest.g.dart';

@freezed
class DeleteGradeRequest with _$DeleteGradeRequest {
  factory DeleteGradeRequest(
    int gradeId,
    int classId,
    int userId,
  ) = _DeleteGradeRequest;

  factory DeleteGradeRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteGradeRequestFromJson(json);
}
