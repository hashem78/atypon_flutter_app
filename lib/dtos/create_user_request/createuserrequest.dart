import 'package:freezed_annotation/freezed_annotation.dart';

part 'createuserrequest.freezed.dart';
part 'createuserrequest.g.dart';

@freezed
class CreateUserRequest with _$CreateUserRequest {
  factory CreateUserRequest(
    String email,
    String passwordHash,
  ) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}
