import 'package:freezed_annotation/freezed_annotation.dart';

part 'addusertoclassrequest.freezed.dart';
part 'addusertoclassrequest.g.dart';

@freezed
class AddUserToClassRequest with _$AddUserToClassRequest {
  factory AddUserToClassRequest(
    int classId,
    int userId,
  ) = _AddUserToClassRequest;

  factory AddUserToClassRequest.fromJson(Map<String, dynamic> json) =>
      _$AddUserToClassRequestFromJson(json);
}
