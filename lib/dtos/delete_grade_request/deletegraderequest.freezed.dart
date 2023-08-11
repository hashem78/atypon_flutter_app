// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deletegraderequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteGradeRequest _$DeleteGradeRequestFromJson(Map<String, dynamic> json) {
  return _DeleteGradeRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteGradeRequest {
  int get gradeId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteGradeRequestCopyWith<DeleteGradeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteGradeRequestCopyWith<$Res> {
  factory $DeleteGradeRequestCopyWith(
          DeleteGradeRequest value, $Res Function(DeleteGradeRequest) then) =
      _$DeleteGradeRequestCopyWithImpl<$Res, DeleteGradeRequest>;
  @useResult
  $Res call({int gradeId, int classId, int userId});
}

/// @nodoc
class _$DeleteGradeRequestCopyWithImpl<$Res, $Val extends DeleteGradeRequest>
    implements $DeleteGradeRequestCopyWith<$Res> {
  _$DeleteGradeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = null,
    Object? classId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      gradeId: null == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_DeleteGradeRequestCopyWith<$Res>
    implements $DeleteGradeRequestCopyWith<$Res> {
  factory _$$_DeleteGradeRequestCopyWith(_$_DeleteGradeRequest value,
          $Res Function(_$_DeleteGradeRequest) then) =
      __$$_DeleteGradeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gradeId, int classId, int userId});
}

/// @nodoc
class __$$_DeleteGradeRequestCopyWithImpl<$Res>
    extends _$DeleteGradeRequestCopyWithImpl<$Res, _$_DeleteGradeRequest>
    implements _$$_DeleteGradeRequestCopyWith<$Res> {
  __$$_DeleteGradeRequestCopyWithImpl(
      _$_DeleteGradeRequest _value, $Res Function(_$_DeleteGradeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = null,
    Object? classId = null,
    Object? userId = null,
  }) {
    return _then(_$_DeleteGradeRequest(
      null == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_DeleteGradeRequest implements _DeleteGradeRequest {
  _$_DeleteGradeRequest(this.gradeId, this.classId, this.userId);

  factory _$_DeleteGradeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteGradeRequestFromJson(json);

  @override
  final int gradeId;
  @override
  final int classId;
  @override
  final int userId;

  @override
  String toString() {
    return 'DeleteGradeRequest(gradeId: $gradeId, classId: $classId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteGradeRequest &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gradeId, classId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteGradeRequestCopyWith<_$_DeleteGradeRequest> get copyWith =>
      __$$_DeleteGradeRequestCopyWithImpl<_$_DeleteGradeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteGradeRequestToJson(
      this,
    );
  }
}

abstract class _DeleteGradeRequest implements DeleteGradeRequest {
  factory _DeleteGradeRequest(
          final int gradeId, final int classId, final int userId) =
      _$_DeleteGradeRequest;

  factory _DeleteGradeRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteGradeRequest.fromJson;

  @override
  int get gradeId;
  @override
  int get classId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteGradeRequestCopyWith<_$_DeleteGradeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
