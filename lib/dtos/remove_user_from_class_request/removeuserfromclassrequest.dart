import 'package:freezed_annotation/freezed_annotation.dart';

part 'removeuserfromclassrequest.freezed.dart';
part 'removeuserfromclassrequest.g.dart';

@freezed
class RemoveUserFromClassRequest with _$RemoveUserFromClassRequest {
  factory RemoveUserFromClassRequest(
    int classId,
    int userId,
  ) = _RemoveUserFromClassRequest;

  factory RemoveUserFromClassRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveUserFromClassRequestFromJson(json);
}
