import 'package:freezed_annotation/freezed_annotation.dart';

part 'addroletouserrequest.freezed.dart';
part 'addroletouserrequest.g.dart';

@freezed
class AddRoleToUserRequest with _$AddRoleToUserRequest {
  factory AddRoleToUserRequest(
    int userId,
    int roleId,
  ) = _AddRoleToUserRequest;

  factory AddRoleToUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AddRoleToUserRequestFromJson(json);
}
