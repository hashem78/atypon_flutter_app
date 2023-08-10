import 'package:freezed_annotation/freezed_annotation.dart';

part 'removerolefromuserrequest.freezed.dart';
part 'removerolefromuserrequest.g.dart';

@freezed
class RemoveRoleFromUserRequest with _$RemoveRoleFromUserRequest {
  factory RemoveRoleFromUserRequest(
    int userId,
    int roleId,
  ) = _RemoveRoleFromUserRequest;

  factory RemoveRoleFromUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveRoleFromUserRequestFromJson(json);
}
