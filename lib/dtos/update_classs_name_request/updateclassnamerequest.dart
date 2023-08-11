import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateclassnamerequest.freezed.dart';
part 'updateclassnamerequest.g.dart';

@freezed
class UpdateClassNameRequest with _$UpdateClassNameRequest {
  factory UpdateClassNameRequest(
    int classId,
    String name,
  ) = _UpdateClassNameRequest;

  factory UpdateClassNameRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassNameRequestFromJson(json);
}
