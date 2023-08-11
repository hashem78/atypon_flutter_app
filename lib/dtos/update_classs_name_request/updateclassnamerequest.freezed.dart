// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updateclassnamerequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateClassNameRequest _$UpdateClassNameRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateClassNameRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassNameRequest {
  int get classId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateClassNameRequestCopyWith<UpdateClassNameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassNameRequestCopyWith<$Res> {
  factory $UpdateClassNameRequestCopyWith(UpdateClassNameRequest value,
          $Res Function(UpdateClassNameRequest) then) =
      _$UpdateClassNameRequestCopyWithImpl<$Res, UpdateClassNameRequest>;
  @useResult
  $Res call({int classId, String name});
}

/// @nodoc
class _$UpdateClassNameRequestCopyWithImpl<$Res,
        $Val extends UpdateClassNameRequest>
    implements $UpdateClassNameRequestCopyWith<$Res> {
  _$UpdateClassNameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateClassNameRequestCopyWith<$Res>
    implements $UpdateClassNameRequestCopyWith<$Res> {
  factory _$$_UpdateClassNameRequestCopyWith(_$_UpdateClassNameRequest value,
          $Res Function(_$_UpdateClassNameRequest) then) =
      __$$_UpdateClassNameRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int classId, String name});
}

/// @nodoc
class __$$_UpdateClassNameRequestCopyWithImpl<$Res>
    extends _$UpdateClassNameRequestCopyWithImpl<$Res,
        _$_UpdateClassNameRequest>
    implements _$$_UpdateClassNameRequestCopyWith<$Res> {
  __$$_UpdateClassNameRequestCopyWithImpl(_$_UpdateClassNameRequest _value,
      $Res Function(_$_UpdateClassNameRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? name = null,
  }) {
    return _then(_$_UpdateClassNameRequest(
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateClassNameRequest implements _UpdateClassNameRequest {
  _$_UpdateClassNameRequest(this.classId, this.name);

  factory _$_UpdateClassNameRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateClassNameRequestFromJson(json);

  @override
  final int classId;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateClassNameRequest(classId: $classId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateClassNameRequest &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateClassNameRequestCopyWith<_$_UpdateClassNameRequest> get copyWith =>
      __$$_UpdateClassNameRequestCopyWithImpl<_$_UpdateClassNameRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateClassNameRequestToJson(
      this,
    );
  }
}

abstract class _UpdateClassNameRequest implements UpdateClassNameRequest {
  factory _UpdateClassNameRequest(final int classId, final String name) =
      _$_UpdateClassNameRequest;

  factory _UpdateClassNameRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateClassNameRequest.fromJson;

  @override
  int get classId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateClassNameRequestCopyWith<_$_UpdateClassNameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
