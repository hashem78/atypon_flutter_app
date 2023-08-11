// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addusertoclassrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddUserToClassRequest _$AddUserToClassRequestFromJson(
    Map<String, dynamic> json) {
  return _AddUserToClassRequest.fromJson(json);
}

/// @nodoc
mixin _$AddUserToClassRequest {
  int get classId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddUserToClassRequestCopyWith<AddUserToClassRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserToClassRequestCopyWith<$Res> {
  factory $AddUserToClassRequestCopyWith(AddUserToClassRequest value,
          $Res Function(AddUserToClassRequest) then) =
      _$AddUserToClassRequestCopyWithImpl<$Res, AddUserToClassRequest>;
  @useResult
  $Res call({int classId, int userId});
}

/// @nodoc
class _$AddUserToClassRequestCopyWithImpl<$Res,
        $Val extends AddUserToClassRequest>
    implements $AddUserToClassRequestCopyWith<$Res> {
  _$AddUserToClassRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddUserToClassRequestCopyWith<$Res>
    implements $AddUserToClassRequestCopyWith<$Res> {
  factory _$$_AddUserToClassRequestCopyWith(_$_AddUserToClassRequest value,
          $Res Function(_$_AddUserToClassRequest) then) =
      __$$_AddUserToClassRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int classId, int userId});
}

/// @nodoc
class __$$_AddUserToClassRequestCopyWithImpl<$Res>
    extends _$AddUserToClassRequestCopyWithImpl<$Res, _$_AddUserToClassRequest>
    implements _$$_AddUserToClassRequestCopyWith<$Res> {
  __$$_AddUserToClassRequestCopyWithImpl(_$_AddUserToClassRequest _value,
      $Res Function(_$_AddUserToClassRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? userId = null,
  }) {
    return _then(_$_AddUserToClassRequest(
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
class _$_AddUserToClassRequest implements _AddUserToClassRequest {
  _$_AddUserToClassRequest(this.classId, this.userId);

  factory _$_AddUserToClassRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddUserToClassRequestFromJson(json);

  @override
  final int classId;
  @override
  final int userId;

  @override
  String toString() {
    return 'AddUserToClassRequest(classId: $classId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUserToClassRequest &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddUserToClassRequestCopyWith<_$_AddUserToClassRequest> get copyWith =>
      __$$_AddUserToClassRequestCopyWithImpl<_$_AddUserToClassRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddUserToClassRequestToJson(
      this,
    );
  }
}

abstract class _AddUserToClassRequest implements AddUserToClassRequest {
  factory _AddUserToClassRequest(final int classId, final int userId) =
      _$_AddUserToClassRequest;

  factory _AddUserToClassRequest.fromJson(Map<String, dynamic> json) =
      _$_AddUserToClassRequest.fromJson;

  @override
  int get classId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AddUserToClassRequestCopyWith<_$_AddUserToClassRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
