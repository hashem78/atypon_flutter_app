import 'package:freezed_annotation/freezed_annotation.dart';

part 'createclassrequest.freezed.dart';
part 'createclassrequest.g.dart';

@freezed
class CreateClassRequest with _$CreateClassRequest {
  factory CreateClassRequest(
    int creatorId,
    String name,
  ) = _CreateClassRequest;

  factory CreateClassRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateClassRequestFromJson(json);
}
