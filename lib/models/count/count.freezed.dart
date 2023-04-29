// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  int get ABSENT => throw _privateConstructorUsedError;
  int get LATE => throw _privateConstructorUsedError;
  int get OK => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call({int ABSENT, int LATE, int OK});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ABSENT = null,
    Object? LATE = null,
    Object? OK = null,
  }) {
    return _then(_value.copyWith(
      ABSENT: null == ABSENT
          ? _value.ABSENT
          : ABSENT // ignore: cast_nullable_to_non_nullable
              as int,
      LATE: null == LATE
          ? _value.LATE
          : LATE // ignore: cast_nullable_to_non_nullable
              as int,
      OK: null == OK
          ? _value.OK
          : OK // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$_CountCopyWith(_$_Count value, $Res Function(_$_Count) then) =
      __$$_CountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ABSENT, int LATE, int OK});
}

/// @nodoc
class __$$_CountCopyWithImpl<$Res> extends _$CountCopyWithImpl<$Res, _$_Count>
    implements _$$_CountCopyWith<$Res> {
  __$$_CountCopyWithImpl(_$_Count _value, $Res Function(_$_Count) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ABSENT = null,
    Object? LATE = null,
    Object? OK = null,
  }) {
    return _then(_$_Count(
      ABSENT: null == ABSENT
          ? _value.ABSENT
          : ABSENT // ignore: cast_nullable_to_non_nullable
              as int,
      LATE: null == LATE
          ? _value.LATE
          : LATE // ignore: cast_nullable_to_non_nullable
              as int,
      OK: null == OK
          ? _value.OK
          : OK // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Count implements _Count {
  _$_Count({required this.ABSENT, required this.LATE, required this.OK});

  factory _$_Count.fromJson(Map<String, dynamic> json) =>
      _$$_CountFromJson(json);

  @override
  final int ABSENT;
  @override
  final int LATE;
  @override
  final int OK;

  @override
  String toString() {
    return 'Count(ABSENT: $ABSENT, LATE: $LATE, OK: $OK)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Count &&
            (identical(other.ABSENT, ABSENT) || other.ABSENT == ABSENT) &&
            (identical(other.LATE, LATE) || other.LATE == LATE) &&
            (identical(other.OK, OK) || other.OK == OK));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ABSENT, LATE, OK);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountCopyWith<_$_Count> get copyWith =>
      __$$_CountCopyWithImpl<_$_Count>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountToJson(
      this,
    );
  }
}

abstract class _Count implements Count {
  factory _Count(
      {required final int ABSENT,
      required final int LATE,
      required final int OK}) = _$_Count;

  factory _Count.fromJson(Map<String, dynamic> json) = _$_Count.fromJson;

  @override
  int get ABSENT;
  @override
  int get LATE;
  @override
  int get OK;
  @override
  @JsonKey(ignore: true)
  _$$_CountCopyWith<_$_Count> get copyWith =>
      throw _privateConstructorUsedError;
}
