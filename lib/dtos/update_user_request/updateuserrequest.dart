import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateuserrequest.freezed.dart';
part 'updateuserrequest.g.dart';

@freezed
class UpdateUserRequest with _$UpdateUserRequest {
  factory UpdateUserRequest(
    int id, {
    String? email,
    String? passwordHash,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}
