// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
mixin _$Attendance {
  int get id => throw _privateConstructorUsedError;
  int get student_id => throw _privateConstructorUsedError;
  String get lecture_id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get request_ip => throw _privateConstructorUsedError;
  String get request_location => throw _privateConstructorUsedError;
  String get validator => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res, Attendance>;
  @useResult
  $Res call(
      {int id,
      int student_id,
      String lecture_id,
      String status,
      String request_ip,
      String request_location,
      String validator,
      String created_at});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student_id = null,
    Object? lecture_id = null,
    Object? status = null,
    Object? request_ip = null,
    Object? request_location = null,
    Object? validator = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      lecture_id: null == lecture_id
          ? _value.lecture_id
          : lecture_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      request_ip: null == request_ip
          ? _value.request_ip
          : request_ip // ignore: cast_nullable_to_non_nullable
              as String,
      request_location: null == request_location
          ? _value.request_location
          : request_location // ignore: cast_nullable_to_non_nullable
              as String,
      validator: null == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceCopyWith<$Res>
    implements $AttendanceCopyWith<$Res> {
  factory _$$_AttendanceCopyWith(
          _$_Attendance value, $Res Function(_$_Attendance) then) =
      __$$_AttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int student_id,
      String lecture_id,
      String status,
      String request_ip,
      String request_location,
      String validator,
      String created_at});
}

/// @nodoc
class __$$_AttendanceCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$_Attendance>
    implements _$$_AttendanceCopyWith<$Res> {
  __$$_AttendanceCopyWithImpl(
      _$_Attendance _value, $Res Function(_$_Attendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student_id = null,
    Object? lecture_id = null,
    Object? status = null,
    Object? request_ip = null,
    Object? request_location = null,
    Object? validator = null,
    Object? created_at = null,
  }) {
    return _then(_$_Attendance(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student_id: null == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int,
      lecture_id: null == lecture_id
          ? _value.lecture_id
          : lecture_id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      request_ip: null == request_ip
          ? _value.request_ip
          : request_ip // ignore: cast_nullable_to_non_nullable
              as String,
      request_location: null == request_location
          ? _value.request_location
          : request_location // ignore: cast_nullable_to_non_nullable
              as String,
      validator: null == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attendance implements _Attendance {
  _$_Attendance(
      {required this.id,
      required this.student_id,
      required this.lecture_id,
      required this.status,
      required this.request_ip,
      required this.request_location,
      required this.validator,
      required this.created_at});

  factory _$_Attendance.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceFromJson(json);

  @override
  final int id;
  @override
  final int student_id;
  @override
  final String lecture_id;
  @override
  final String status;
  @override
  final String request_ip;
  @override
  final String request_location;
  @override
  final String validator;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Attendance(id: $id, student_id: $student_id, lecture_id: $lecture_id, status: $status, request_ip: $request_ip, request_location: $request_location, validator: $validator, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attendance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.lecture_id, lecture_id) ||
                other.lecture_id == lecture_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.request_ip, request_ip) ||
                other.request_ip == request_ip) &&
            (identical(other.request_location, request_location) ||
                other.request_location == request_location) &&
            (identical(other.validator, validator) ||
                other.validator == validator) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, student_id, lecture_id,
      status, request_ip, request_location, validator, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      __$$_AttendanceCopyWithImpl<_$_Attendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceToJson(
      this,
    );
  }
}

abstract class _Attendance implements Attendance {
  factory _Attendance(
      {required final int id,
      required final int student_id,
      required final String lecture_id,
      required final String status,
      required final String request_ip,
      required final String request_location,
      required final String validator,
      required final String created_at}) = _$_Attendance;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$_Attendance.fromJson;

  @override
  int get id;
  @override
  int get student_id;
  @override
  String get lecture_id;
  @override
  String get status;
  @override
  String get request_ip;
  @override
  String get request_location;
  @override
  String get validator;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceList _$AttendanceListFromJson(Map<String, dynamic> json) {
  return _AttendanceList.fromJson(json);
}

/// @nodoc
mixin _$AttendanceList {
  List<Attendance> get attendanceList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceListCopyWith<AttendanceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceListCopyWith<$Res> {
  factory $AttendanceListCopyWith(
          AttendanceList value, $Res Function(AttendanceList) then) =
      _$AttendanceListCopyWithImpl<$Res, AttendanceList>;
  @useResult
  $Res call({List<Attendance> attendanceList});
}

/// @nodoc
class _$AttendanceListCopyWithImpl<$Res, $Val extends AttendanceList>
    implements $AttendanceListCopyWith<$Res> {
  _$AttendanceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceList = null,
  }) {
    return _then(_value.copyWith(
      attendanceList: null == attendanceList
          ? _value.attendanceList
          : attendanceList // ignore: cast_nullable_to_non_nullable
              as List<Attendance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceListCopyWith<$Res>
    implements $AttendanceListCopyWith<$Res> {
  factory _$$_AttendanceListCopyWith(
          _$_AttendanceList value, $Res Function(_$_AttendanceList) then) =
      __$$_AttendanceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Attendance> attendanceList});
}

/// @nodoc
class __$$_AttendanceListCopyWithImpl<$Res>
    extends _$AttendanceListCopyWithImpl<$Res, _$_AttendanceList>
    implements _$$_AttendanceListCopyWith<$Res> {
  __$$_AttendanceListCopyWithImpl(
      _$_AttendanceList _value, $Res Function(_$_AttendanceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceList = null,
  }) {
    return _then(_$_AttendanceList(
      attendanceList: null == attendanceList
          ? _value._attendanceList
          : attendanceList // ignore: cast_nullable_to_non_nullable
              as List<Attendance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceList implements _AttendanceList {
  _$_AttendanceList({required final List<Attendance> attendanceList})
      : _attendanceList = attendanceList;

  factory _$_AttendanceList.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceListFromJson(json);

  final List<Attendance> _attendanceList;
  @override
  List<Attendance> get attendanceList {
    if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceList);
  }

  @override
  String toString() {
    return 'AttendanceList(attendanceList: $attendanceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceList &&
            const DeepCollectionEquality()
                .equals(other._attendanceList, _attendanceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attendanceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceListCopyWith<_$_AttendanceList> get copyWith =>
      __$$_AttendanceListCopyWithImpl<_$_AttendanceList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceListToJson(
      this,
    );
  }
}

abstract class _AttendanceList implements AttendanceList {
  factory _AttendanceList({required final List<Attendance> attendanceList}) =
      _$_AttendanceList;

  factory _AttendanceList.fromJson(Map<String, dynamic> json) =
      _$_AttendanceList.fromJson;

  @override
  List<Attendance> get attendanceList;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceListCopyWith<_$_AttendanceList> get copyWith =>
      throw _privateConstructorUsedError;
}
