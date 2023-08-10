// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'removerolefromuserrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveRoleFromUserRequest _$RemoveRoleFromUserRequestFromJson(
    Map<String, dynamic> json) {
  return _RemoveRoleFromUserRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveRoleFromUserRequest {
  int get userId => throw _privateConstructorUsedError;
  int get roleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveRoleFromUserRequestCopyWith<RemoveRoleFromUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveRoleFromUserRequestCopyWith<$Res> {
  factory $RemoveRoleFromUserRequestCopyWith(RemoveRoleFromUserRequest value,
          $Res Function(RemoveRoleFromUserRequest) then) =
      _$RemoveRoleFromUserRequestCopyWithImpl<$Res, RemoveRoleFromUserRequest>;
  @useResult
  $Res call({int userId, int roleId});
}

/// @nodoc
class _$RemoveRoleFromUserRequestCopyWithImpl<$Res,
        $Val extends RemoveRoleFromUserRequest>
    implements $RemoveRoleFromUserRequestCopyWith<$Res> {
  _$RemoveRoleFromUserRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemoveRoleFromUserRequestCopyWith<$Res>
    implements $RemoveRoleFromUserRequestCopyWith<$Res> {
  factory _$$_RemoveRoleFromUserRequestCopyWith(
          _$_RemoveRoleFromUserRequest value,
          $Res Function(_$_RemoveRoleFromUserRequest) then) =
      __$$_RemoveRoleFromUserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int roleId});
}

/// @nodoc
class __$$_RemoveRoleFromUserRequestCopyWithImpl<$Res>
    extends _$RemoveRoleFromUserRequestCopyWithImpl<$Res,
        _$_RemoveRoleFromUserRequest>
    implements _$$_RemoveRoleFromUserRequestCopyWith<$Res> {
  __$$_RemoveRoleFromUserRequestCopyWithImpl(
      _$_RemoveRoleFromUserRequest _value,
      $Res Function(_$_RemoveRoleFromUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
  }) {
    return _then(_$_RemoveRoleFromUserRequest(
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
class _$_RemoveRoleFromUserRequest implements _RemoveRoleFromUserRequest {
  _$_RemoveRoleFromUserRequest(this.userId, this.roleId);

  factory _$_RemoveRoleFromUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveRoleFromUserRequestFromJson(json);

  @override
  final int userId;
  @override
  final int roleId;

  @override
  String toString() {
    return 'RemoveRoleFromUserRequest(userId: $userId, roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveRoleFromUserRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveRoleFromUserRequestCopyWith<_$_RemoveRoleFromUserRequest>
      get copyWith => __$$_RemoveRoleFromUserRequestCopyWithImpl<
          _$_RemoveRoleFromUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveRoleFromUserRequestToJson(
      this,
    );
  }
}

abstract class _RemoveRoleFromUserRequest implements RemoveRoleFromUserRequest {
  factory _RemoveRoleFromUserRequest(final int userId, final int roleId) =
      _$_RemoveRoleFromUserRequest;

  factory _RemoveRoleFromUserRequest.fromJson(Map<String, dynamic> json) =
      _$_RemoveRoleFromUserRequest.fromJson;

  @override
  int get userId;
  @override
  int get roleId;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveRoleFromUserRequestCopyWith<_$_RemoveRoleFromUserRequest>
      get copyWith => throw _privateConstructorUsedError;
}
