import 'package:freezed_annotation/freezed_annotation.dart';

part 'creategraderequest.freezed.dart';
part 'creategraderequest.g.dart';

@freezed
class CreateGradeRequest with _$CreateGradeRequest {
  factory CreateGradeRequest(
    int classId,
    int userId,
    double grade,
  ) = _CreateGradeRequest;

  factory CreateGradeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGradeRequestFromJson(json);
}
