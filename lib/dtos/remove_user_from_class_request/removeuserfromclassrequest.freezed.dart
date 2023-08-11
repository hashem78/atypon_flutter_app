// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'removeuserfromclassrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveUserFromClassRequest _$RemoveUserFromClassRequestFromJson(
    Map<String, dynamic> json) {
  return _RemoveUserFromClassRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveUserFromClassRequest {
  int get classId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveUserFromClassRequestCopyWith<RemoveUserFromClassRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveUserFromClassRequestCopyWith<$Res> {
  factory $RemoveUserFromClassRequestCopyWith(RemoveUserFromClassRequest value,
          $Res Function(RemoveUserFromClassRequest) then) =
      _$RemoveUserFromClassRequestCopyWithImpl<$Res,
          RemoveUserFromClassRequest>;
  @useResult
  $Res call({int classId, int userId});
}

/// @nodoc
class _$RemoveUserFromClassRequestCopyWithImpl<$Res,
        $Val extends RemoveUserFromClassRequest>
    implements $RemoveUserFromClassRequestCopyWith<$Res> {
  _$RemoveUserFromClassRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoveUserFromClassRequestCopyWith<$Res>
    implements $RemoveUserFromClassRequestCopyWith<$Res> {
  factory _$$_RemoveUserFromClassRequestCopyWith(
          _$_RemoveUserFromClassRequest value,
          $Res Function(_$_RemoveUserFromClassRequest) then) =
      __$$_RemoveUserFromClassRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int classId, int userId});
}

/// @nodoc
class __$$_RemoveUserFromClassRequestCopyWithImpl<$Res>
    extends _$RemoveUserFromClassRequestCopyWithImpl<$Res,
        _$_RemoveUserFromClassRequest>
    implements _$$_RemoveUserFromClassRequestCopyWith<$Res> {
  __$$_RemoveUserFromClassRequestCopyWithImpl(
      _$_RemoveUserFromClassRequest _value,
      $Res Function(_$_RemoveUserFromClassRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? userId = null,
  }) {
    return _then(_$_RemoveUserFromClassRequest(
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoveUserFromClassRequest implements _RemoveUserFromClassRequest {
  _$_RemoveUserFromClassRequest(this.classId, this.userId);

  factory _$_RemoveUserFromClassRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveUserFromClassRequestFromJson(json);

  @override
  final int classId;
  @override
  final int userId;

  @override
  String toString() {
    return 'RemoveUserFromClassRequest(classId: $classId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveUserFromClassRequest &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveUserFromClassRequestCopyWith<_$_RemoveUserFromClassRequest>
      get copyWith => __$$_RemoveUserFromClassRequestCopyWithImpl<
          _$_RemoveUserFromClassRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveUserFromClassRequestToJson(
      this,
    );
  }
}

abstract class _RemoveUserFromClassRequest
    implements RemoveUserFromClassRequest {
  factory _RemoveUserFromClassRequest(final int classId, final int userId) =
      _$_RemoveUserFromClassRequest;

  factory _RemoveUserFromClassRequest.fromJson(Map<String, dynamic> json) =
      _$_RemoveUserFromClassRequest.fromJson;

  @override
  int get classId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveUserFromClassRequestCopyWith<_$_RemoveUserFromClassRequest>
      get copyWith => throw _privateConstructorUsedError;
}
