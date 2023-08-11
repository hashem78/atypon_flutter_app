// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Grade _$GradeFromJson(Map<String, dynamic> json) {
  return _Grade.fromJson(json);
}

/// @nodoc
mixin _$Grade {
  int get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get class_id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get user_id => throw _privateConstructorUsedError;
  double get grade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradeCopyWith<Grade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) then) =
      _$GradeCopyWithImpl<$Res, Grade>;
  @useResult
  $Res call({int id, int class_id, int user_id, double grade});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res, $Val extends Grade>
    implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? class_id = null,
    Object? user_id = null,
    Object? grade = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      class_id: null == class_id
          ? _value.class_id
          : class_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$$_GradeCopyWith(_$_Grade value, $Res Function(_$_Grade) then) =
      __$$_GradeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int class_id, int user_id, double grade});
}

/// @nodoc
class __$$_GradeCopyWithImpl<$Res> extends _$GradeCopyWithImpl<$Res, _$_Grade>
    implements _$$_GradeCopyWith<$Res> {
  __$$_GradeCopyWithImpl(_$_Grade _value, $Res Function(_$_Grade) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? class_id = null,
    Object? user_id = null,
    Object? grade = null,
  }) {
    return _then(_$_Grade(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == class_id
          ? _value.class_id
          : class_id // ignore: cast_nullable_to_non_nullable
              as int,
      null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
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
class _$_Grade implements _Grade {
  _$_Grade(this.id, this.class_id, this.user_id, this.grade);

  factory _$_Grade.fromJson(Map<String, dynamic> json) =>
      _$$_GradeFromJson(json);

  @override
  final int id;
// ignore: non_constant_identifier_names
  @override
  final int class_id;
// ignore: non_constant_identifier_names
  @override
  final int user_id;
  @override
  final double grade;

  @override
  String toString() {
    return 'Grade(id: $id, class_id: $class_id, user_id: $user_id, grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Grade &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.class_id, class_id) ||
                other.class_id == class_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, class_id, user_id, grade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      __$$_GradeCopyWithImpl<_$_Grade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradeToJson(
      this,
    );
  }
}

abstract class _Grade implements Grade {
  factory _Grade(final int id, final int class_id, final int user_id,
      final double grade) = _$_Grade;

  factory _Grade.fromJson(Map<String, dynamic> json) = _$_Grade.fromJson;

  @override
  int get id;
  @override // ignore: non_constant_identifier_names
  int get class_id;
  @override // ignore: non_constant_identifier_names
  int get user_id;
  @override
  double get grade;
  @override
  @JsonKey(ignore: true)
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      throw _privateConstructorUsedError;
}
