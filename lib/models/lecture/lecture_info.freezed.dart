// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LectureInfo _$LectureInfoFromJson(Map<String, dynamic> json) {
  return _LectureInfo.fromJson(json);
}

/// @nodoc
mixin _$LectureInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get professor_id => throw _privateConstructorUsedError;
  String get lecture_start_time => throw _privateConstructorUsedError;
  int get building_id => throw _privateConstructorUsedError;
  int get attendance_valid_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureInfoCopyWith<LectureInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureInfoCopyWith<$Res> {
  factory $LectureInfoCopyWith(
          LectureInfo value, $Res Function(LectureInfo) then) =
      _$LectureInfoCopyWithImpl<$Res, LectureInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      int professor_id,
      String lecture_start_time,
      int building_id,
      int attendance_valid_time});
}

/// @nodoc
class _$LectureInfoCopyWithImpl<$Res, $Val extends LectureInfo>
    implements $LectureInfoCopyWith<$Res> {
  _$LectureInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? professor_id = null,
    Object? lecture_start_time = null,
    Object? building_id = null,
    Object? attendance_valid_time = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      professor_id: null == professor_id
          ? _value.professor_id
          : professor_id // ignore: cast_nullable_to_non_nullable
              as int,
      lecture_start_time: null == lecture_start_time
          ? _value.lecture_start_time
          : lecture_start_time // ignore: cast_nullable_to_non_nullable
              as String,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
      attendance_valid_time: null == attendance_valid_time
          ? _value.attendance_valid_time
          : attendance_valid_time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LectureInfoCopyWith<$Res>
    implements $LectureInfoCopyWith<$Res> {
  factory _$$_LectureInfoCopyWith(
          _$_LectureInfo value, $Res Function(_$_LectureInfo) then) =
      __$$_LectureInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int professor_id,
      String lecture_start_time,
      int building_id,
      int attendance_valid_time});
}

/// @nodoc
class __$$_LectureInfoCopyWithImpl<$Res>
    extends _$LectureInfoCopyWithImpl<$Res, _$_LectureInfo>
    implements _$$_LectureInfoCopyWith<$Res> {
  __$$_LectureInfoCopyWithImpl(
      _$_LectureInfo _value, $Res Function(_$_LectureInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? professor_id = null,
    Object? lecture_start_time = null,
    Object? building_id = null,
    Object? attendance_valid_time = null,
  }) {
    return _then(_$_LectureInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      professor_id: null == professor_id
          ? _value.professor_id
          : professor_id // ignore: cast_nullable_to_non_nullable
              as int,
      lecture_start_time: null == lecture_start_time
          ? _value.lecture_start_time
          : lecture_start_time // ignore: cast_nullable_to_non_nullable
              as String,
      building_id: null == building_id
          ? _value.building_id
          : building_id // ignore: cast_nullable_to_non_nullable
              as int,
      attendance_valid_time: null == attendance_valid_time
          ? _value.attendance_valid_time
          : attendance_valid_time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LectureInfo implements _LectureInfo {
  _$_LectureInfo(
      {required this.id,
      required this.name,
      required this.professor_id,
      required this.lecture_start_time,
      required this.building_id,
      required this.attendance_valid_time});

  factory _$_LectureInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LectureInfoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int professor_id;
  @override
  final String lecture_start_time;
  @override
  final int building_id;
  @override
  final int attendance_valid_time;

  @override
  String toString() {
    return 'LectureInfo(id: $id, name: $name, professor_id: $professor_id, lecture_start_time: $lecture_start_time, building_id: $building_id, attendance_valid_time: $attendance_valid_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LectureInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.professor_id, professor_id) ||
                other.professor_id == professor_id) &&
            (identical(other.lecture_start_time, lecture_start_time) ||
                other.lecture_start_time == lecture_start_time) &&
            (identical(other.building_id, building_id) ||
                other.building_id == building_id) &&
            (identical(other.attendance_valid_time, attendance_valid_time) ||
                other.attendance_valid_time == attendance_valid_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, professor_id,
      lecture_start_time, building_id, attendance_valid_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LectureInfoCopyWith<_$_LectureInfo> get copyWith =>
      __$$_LectureInfoCopyWithImpl<_$_LectureInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LectureInfoToJson(
      this,
    );
  }
}

abstract class _LectureInfo implements LectureInfo {
  factory _LectureInfo(
      {required final String id,
      required final String name,
      required final int professor_id,
      required final String lecture_start_time,
      required final int building_id,
      required final int attendance_valid_time}) = _$_LectureInfo;

  factory _LectureInfo.fromJson(Map<String, dynamic> json) =
      _$_LectureInfo.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get professor_id;
  @override
  String get lecture_start_time;
  @override
  int get building_id;
  @override
  int get attendance_valid_time;
  @override
  @JsonKey(ignore: true)
  _$$_LectureInfoCopyWith<_$_LectureInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

LectureInfoList _$LectureInfoListFromJson(Map<String, dynamic> json) {
  return _LectureInfoList.fromJson(json);
}

/// @nodoc
mixin _$LectureInfoList {
  List<LectureInfo> get lectureInfoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureInfoListCopyWith<LectureInfoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureInfoListCopyWith<$Res> {
  factory $LectureInfoListCopyWith(
          LectureInfoList value, $Res Function(LectureInfoList) then) =
      _$LectureInfoListCopyWithImpl<$Res, LectureInfoList>;
  @useResult
  $Res call({List<LectureInfo> lectureInfoList});
}

/// @nodoc
class _$LectureInfoListCopyWithImpl<$Res, $Val extends LectureInfoList>
    implements $LectureInfoListCopyWith<$Res> {
  _$LectureInfoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lectureInfoList = null,
  }) {
    return _then(_value.copyWith(
      lectureInfoList: null == lectureInfoList
          ? _value.lectureInfoList
          : lectureInfoList // ignore: cast_nullable_to_non_nullable
              as List<LectureInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LectureInfoListCopyWith<$Res>
    implements $LectureInfoListCopyWith<$Res> {
  factory _$$_LectureInfoListCopyWith(
          _$_LectureInfoList value, $Res Function(_$_LectureInfoList) then) =
      __$$_LectureInfoListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LectureInfo> lectureInfoList});
}

/// @nodoc
class __$$_LectureInfoListCopyWithImpl<$Res>
    extends _$LectureInfoListCopyWithImpl<$Res, _$_LectureInfoList>
    implements _$$_LectureInfoListCopyWith<$Res> {
  __$$_LectureInfoListCopyWithImpl(
      _$_LectureInfoList _value, $Res Function(_$_LectureInfoList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lectureInfoList = null,
  }) {
    return _then(_$_LectureInfoList(
      lectureInfoList: null == lectureInfoList
          ? _value._lectureInfoList
          : lectureInfoList // ignore: cast_nullable_to_non_nullable
              as List<LectureInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LectureInfoList implements _LectureInfoList {
  _$_LectureInfoList({required final List<LectureInfo> lectureInfoList})
      : _lectureInfoList = lectureInfoList;

  factory _$_LectureInfoList.fromJson(Map<String, dynamic> json) =>
      _$$_LectureInfoListFromJson(json);

  final List<LectureInfo> _lectureInfoList;
  @override
  List<LectureInfo> get lectureInfoList {
    if (_lectureInfoList is EqualUnmodifiableListView) return _lectureInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectureInfoList);
  }

  @override
  String toString() {
    return 'LectureInfoList(lectureInfoList: $lectureInfoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LectureInfoList &&
            const DeepCollectionEquality()
                .equals(other._lectureInfoList, _lectureInfoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lectureInfoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LectureInfoListCopyWith<_$_LectureInfoList> get copyWith =>
      __$$_LectureInfoListCopyWithImpl<_$_LectureInfoList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LectureInfoListToJson(
      this,
    );
  }
}

abstract class _LectureInfoList implements LectureInfoList {
  factory _LectureInfoList({required final List<LectureInfo> lectureInfoList}) =
      _$_LectureInfoList;

  factory _LectureInfoList.fromJson(Map<String, dynamic> json) =
      _$_LectureInfoList.fromJson;

  @override
  List<LectureInfo> get lectureInfoList;
  @override
  @JsonKey(ignore: true)
  _$$_LectureInfoListCopyWith<_$_LectureInfoList> get copyWith =>
      throw _privateConstructorUsedError;
}
