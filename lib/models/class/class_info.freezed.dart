// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassInfo _$ClassInfoFromJson(Map<String, dynamic> json) {
  return _ClassInfo.fromJson(json);
}

/// @nodoc
mixin _$ClassInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get professor_id => throw _privateConstructorUsedError;
  String get lecture_start_time => throw _privateConstructorUsedError;
  int get building_id => throw _privateConstructorUsedError;
  int get attendance_valid_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassInfoCopyWith<ClassInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoCopyWith<$Res> {
  factory $ClassInfoCopyWith(ClassInfo value, $Res Function(ClassInfo) then) =
      _$ClassInfoCopyWithImpl<$Res, ClassInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      int professor_id,
      String lecture_start_time,
      int building_id,
      int attendance_valid_time});
}

/// @nodoc
class _$ClassInfoCopyWithImpl<$Res, $Val extends ClassInfo>
    implements $ClassInfoCopyWith<$Res> {
  _$ClassInfoCopyWithImpl(this._value, this._then);

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
              as int,
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
abstract class _$$_ClassInfoCopyWith<$Res> implements $ClassInfoCopyWith<$Res> {
  factory _$$_ClassInfoCopyWith(
          _$_ClassInfo value, $Res Function(_$_ClassInfo) then) =
      __$$_ClassInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int professor_id,
      String lecture_start_time,
      int building_id,
      int attendance_valid_time});
}

/// @nodoc
class __$$_ClassInfoCopyWithImpl<$Res>
    extends _$ClassInfoCopyWithImpl<$Res, _$_ClassInfo>
    implements _$$_ClassInfoCopyWith<$Res> {
  __$$_ClassInfoCopyWithImpl(
      _$_ClassInfo _value, $Res Function(_$_ClassInfo) _then)
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
    return _then(_$_ClassInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ClassInfo implements _ClassInfo {
  _$_ClassInfo(
      {required this.id,
      required this.name,
      required this.professor_id,
      required this.lecture_start_time,
      required this.building_id,
      required this.attendance_valid_time});

  factory _$_ClassInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ClassInfoFromJson(json);

  @override
  final int id;
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
    return 'ClassInfo(id: $id, name: $name, professor_id: $professor_id, lecture_start_time: $lecture_start_time, building_id: $building_id, attendance_valid_time: $attendance_valid_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassInfo &&
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
  _$$_ClassInfoCopyWith<_$_ClassInfo> get copyWith =>
      __$$_ClassInfoCopyWithImpl<_$_ClassInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassInfoToJson(
      this,
    );
  }
}

abstract class _ClassInfo implements ClassInfo {
  factory _ClassInfo(
      {required final int id,
      required final String name,
      required final int professor_id,
      required final String lecture_start_time,
      required final int building_id,
      required final int attendance_valid_time}) = _$_ClassInfo;

  factory _ClassInfo.fromJson(Map<String, dynamic> json) =
      _$_ClassInfo.fromJson;

  @override
  int get id;
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
  _$$_ClassInfoCopyWith<_$_ClassInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassInfoList _$ClassInfoListFromJson(Map<String, dynamic> json) {
  return _ClassInfoList.fromJson(json);
}

/// @nodoc
mixin _$ClassInfoList {
  List<ClassInfo> get classInfoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassInfoListCopyWith<ClassInfoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoListCopyWith<$Res> {
  factory $ClassInfoListCopyWith(
          ClassInfoList value, $Res Function(ClassInfoList) then) =
      _$ClassInfoListCopyWithImpl<$Res, ClassInfoList>;
  @useResult
  $Res call({List<ClassInfo> classInfoList});
}

/// @nodoc
class _$ClassInfoListCopyWithImpl<$Res, $Val extends ClassInfoList>
    implements $ClassInfoListCopyWith<$Res> {
  _$ClassInfoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoList = null,
  }) {
    return _then(_value.copyWith(
      classInfoList: null == classInfoList
          ? _value.classInfoList
          : classInfoList // ignore: cast_nullable_to_non_nullable
              as List<ClassInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassInfoListCopyWith<$Res>
    implements $ClassInfoListCopyWith<$Res> {
  factory _$$_ClassInfoListCopyWith(
          _$_ClassInfoList value, $Res Function(_$_ClassInfoList) then) =
      __$$_ClassInfoListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClassInfo> classInfoList});
}

/// @nodoc
class __$$_ClassInfoListCopyWithImpl<$Res>
    extends _$ClassInfoListCopyWithImpl<$Res, _$_ClassInfoList>
    implements _$$_ClassInfoListCopyWith<$Res> {
  __$$_ClassInfoListCopyWithImpl(
      _$_ClassInfoList _value, $Res Function(_$_ClassInfoList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfoList = null,
  }) {
    return _then(_$_ClassInfoList(
      classInfoList: null == classInfoList
          ? _value._classInfoList
          : classInfoList // ignore: cast_nullable_to_non_nullable
              as List<ClassInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassInfoList implements _ClassInfoList {
  _$_ClassInfoList({required final List<ClassInfo> classInfoList})
      : _classInfoList = classInfoList;

  factory _$_ClassInfoList.fromJson(Map<String, dynamic> json) =>
      _$$_ClassInfoListFromJson(json);

  final List<ClassInfo> _classInfoList;
  @override
  List<ClassInfo> get classInfoList {
    if (_classInfoList is EqualUnmodifiableListView) return _classInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classInfoList);
  }

  @override
  String toString() {
    return 'ClassInfoList(classInfoList: $classInfoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassInfoList &&
            const DeepCollectionEquality()
                .equals(other._classInfoList, _classInfoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_classInfoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassInfoListCopyWith<_$_ClassInfoList> get copyWith =>
      __$$_ClassInfoListCopyWithImpl<_$_ClassInfoList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassInfoListToJson(
      this,
    );
  }
}

abstract class _ClassInfoList implements ClassInfoList {
  factory _ClassInfoList({required final List<ClassInfo> classInfoList}) =
      _$_ClassInfoList;

  factory _ClassInfoList.fromJson(Map<String, dynamic> json) =
      _$_ClassInfoList.fromJson;

  @override
  List<ClassInfo> get classInfoList;
  @override
  @JsonKey(ignore: true)
  _$$_ClassInfoListCopyWith<_$_ClassInfoList> get copyWith =>
      throw _privateConstructorUsedError;
}
