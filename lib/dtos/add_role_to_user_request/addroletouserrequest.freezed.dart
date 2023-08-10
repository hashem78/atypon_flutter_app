// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addroletouserrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddRoleToUserRequest _$AddRoleToUserRequestFromJson(Map<String, dynamic> json) {
  return _AddRoleToUserRequest.fromJson(json);
}

/// @nodoc
mixin _$AddRoleToUserRequest {
  int get userId => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRoleToUserRequestCopyWith<AddRoleToUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRoleToUserRequestCopyWith<$Res> {
  factory $AddRoleToUserRequestCopyWith(AddRoleToUserRequest value,
          $Res Function(AddRoleToUserRequest) then) =
      _$AddRoleToUserRequestCopyWithImpl<$Res, AddRoleToUserRequest>;
  @useResult
  $Res call({int userId, int roleId});
}

/// @nodoc
class _$AddRoleToUserRequestCopyWithImpl<$Res,
        $Val extends AddRoleToUserRequest>
    implements $AddRoleToUserRequestCopyWith<$Res> {
  _$AddRoleToUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddRoleToUserRequestCopyWith<$Res>
    implements $AddRoleToUserRequestCopyWith<$Res> {
  factory _$$_AddRoleToUserRequestCopyWith(_$_AddRoleToUserRequest value,
          $Res Function(_$_AddRoleToUserRequest) then) =
      __$$_AddRoleToUserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int roleId});
}

/// @nodoc
class __$$_AddRoleToUserRequestCopyWithImpl<$Res>
    extends _$AddRoleToUserRequestCopyWithImpl<$Res, _$_AddRoleToUserRequest>
    implements _$$_AddRoleToUserRequestCopyWith<$Res> {
  __$$_AddRoleToUserRequestCopyWithImpl(_$_AddRoleToUserRequest _value,
      $Res Function(_$_AddRoleToUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_$_AddRoleToUserRequest(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddRoleToUserRequest implements _AddRoleToUserRequest {
  _$_AddRoleToUserRequest(this.userId, this.roleId);

  factory _$_AddRoleToUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddRoleToUserRequestFromJson(json);

  @override
  final int userId;
  @override
  final int roleId;

  @override
  String toString() {
    return 'AddRoleToUserRequest(userId: $userId, roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRoleToUserRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRoleToUserRequestCopyWith<_$_AddRoleToUserRequest> get copyWith =>
      __$$_AddRoleToUserRequestCopyWithImpl<_$_AddRoleToUserRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddRoleToUserRequestToJson(
      this,
    );
  }
}

abstract class _AddRoleToUserRequest implements AddRoleToUserRequest {
  factory _AddRoleToUserRequest(final int userId, final int roleId) =
      _$_AddRoleToUserRequest;

  factory _AddRoleToUserRequest.fromJson(Map<String, dynamic> json) =
      _$_AddRoleToUserRequest.fromJson;

  @override
  int get userId;
  @override
  int get roleId;
  @override
  @JsonKey(ignore: true)
  _$$_AddRoleToUserRequestCopyWith<_$_AddRoleToUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
