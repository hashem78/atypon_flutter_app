// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'createuserrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get email => throw _privateConstructorUsedError;
  String get passwordHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call({String email, String passwordHash});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwordHash = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      passwordHash: null == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserRequestCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$_CreateUserRequestCopyWith(_$_CreateUserRequest value,
          $Res Function(_$_CreateUserRequest) then) =
      __$$_CreateUserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String passwordHash});
}

/// @nodoc
class __$$_CreateUserRequestCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$_CreateUserRequest>
    implements _$$_CreateUserRequestCopyWith<$Res> {
  __$$_CreateUserRequestCopyWithImpl(
      _$_CreateUserRequest _value, $Res Function(_$_CreateUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwordHash = null,
  }) {
    return _then(_$_CreateUserRequest(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserRequest implements _CreateUserRequest {
  _$_CreateUserRequest(this.email, this.passwordHash);

  factory _$_CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserRequestFromJson(json);

  @override
  final String email;
  @override
  final String passwordHash;

  @override
  String toString() {
    return 'CreateUserRequest(email: $email, passwordHash: $passwordHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, passwordHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserRequestCopyWith<_$_CreateUserRequest> get copyWith =>
      __$$_CreateUserRequestCopyWithImpl<_$_CreateUserRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserRequestToJson(
      this,
    );
  }
}

abstract class _CreateUserRequest implements CreateUserRequest {
  factory _CreateUserRequest(final String email, final String passwordHash) =
      _$_CreateUserRequest;

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateUserRequest.fromJson;

  @override
  String get email;
  @override
  String get passwordHash;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserRequestCopyWith<_$_CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
