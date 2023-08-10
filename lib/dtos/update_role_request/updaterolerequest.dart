import 'package:freezed_annotation/freezed_annotation.dart';

part 'updaterolerequest.freezed.dart';
part 'updaterolerequest.g.dart';

@freezed
class UpdateRoleRequest with _$UpdateRoleRequest {
  factory UpdateRoleRequest(
    int id,
    String name,
  ) = _UpdateRoleRequest;

  factory UpdateRoleRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRoleRequestFromJson(json);
}
