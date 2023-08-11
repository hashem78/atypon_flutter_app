// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upategraderequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpateGradeRequest _$UpateGradeRequestFromJson(Map<String, dynamic> json) {
  return _UpateGradeRequest.fromJson(json);
}

/// @nodoc
mixin _$UpateGradeRequest {
  int get gradeId => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  double get grade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpateGradeRequestCopyWith<UpateGradeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpateGradeRequestCopyWith<$Res> {
  factory $UpateGradeRequestCopyWith(
          UpateGradeRequest value, $Res Function(UpateGradeRequest) then) =
      _$UpateGradeRequestCopyWithImpl<$Res, UpateGradeRequest>;
  @useResult
  $Res call({int gradeId, int classId, int userId, double grade});
}

/// @nodoc
class _$UpateGradeRequestCopyWithImpl<$Res, $Val extends UpateGradeRequest>
    implements $UpateGradeRequestCopyWith<$Res> {
  _$UpateGradeRequestCopyWithImpl(this._value, this._then);

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
    Object? grade = null,
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
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpateGradeRequestCopyWith<$Res>
    implements $UpateGradeRequestCopyWith<$Res> {
  factory _$$_UpateGradeRequestCopyWith(_$_UpateGradeRequest value,
          $Res Function(_$_UpateGradeRequest) then) =
      __$$_UpateGradeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gradeId, int classId, int userId, double grade});
}

/// @nodoc
class __$$_UpateGradeRequestCopyWithImpl<$Res>
    extends _$UpateGradeRequestCopyWithImpl<$Res, _$_UpateGradeRequest>
    implements _$$_UpateGradeRequestCopyWith<$Res> {
  __$$_UpateGradeRequestCopyWithImpl(
      _$_UpateGradeRequest _value, $Res Function(_$_UpateGradeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = null,
    Object? classId = null,
    Object? userId = null,
    Object? grade = null,
  }) {
    return _then(_$_UpateGradeRequest(
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
      null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpateGradeRequest implements _UpateGradeRequest {
  _$_UpateGradeRequest(this.gradeId, this.classId, this.userId, this.grade);

  factory _$_UpateGradeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpateGradeRequestFromJson(json);

  @override
  final int gradeId;
  @override
  final int classId;
  @override
  final int userId;
  @override
  final double grade;

  @override
  String toString() {
    return 'UpateGradeRequest(gradeId: $gradeId, classId: $classId, userId: $userId, grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpateGradeRequest &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gradeId, classId, userId, grade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpateGradeRequestCopyWith<_$_UpateGradeRequest> get copyWith =>
      __$$_UpateGradeRequestCopyWithImpl<_$_UpateGradeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpateGradeRequestToJson(
      this,
    );
  }
}

abstract class _UpateGradeRequest implements UpateGradeRequest {
  factory _UpateGradeRequest(final int gradeId, final int classId,
      final int userId, final double grade) = _$_UpateGradeRequest;

  factory _UpateGradeRequest.fromJson(Map<String, dynamic> json) =
      _$_UpateGradeRequest.fromJson;

  @override
  int get gradeId;
  @override
  int get classId;
  @override
  int get userId;
  @override
  double get grade;
  @override
  @JsonKey(ignore: true)
  _$$_UpateGradeRequestCopyWith<_$_UpateGradeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
