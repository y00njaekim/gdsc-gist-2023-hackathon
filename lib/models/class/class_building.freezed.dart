// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassBuilding _$ClassBuildingFromJson(Map<String, dynamic> json) {
  return _ClassBuilding.fromJson(json);
}

/// @nodoc
mixin _$ClassBuilding {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassBuildingCopyWith<ClassBuilding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassBuildingCopyWith<$Res> {
  factory $ClassBuildingCopyWith(
          ClassBuilding value, $Res Function(ClassBuilding) then) =
      _$ClassBuildingCopyWithImpl<$Res, ClassBuilding>;
  @useResult
  $Res call({int id, String name, String location});
}

/// @nodoc
class _$ClassBuildingCopyWithImpl<$Res, $Val extends ClassBuilding>
    implements $ClassBuildingCopyWith<$Res> {
  _$ClassBuildingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassBuildingCopyWith<$Res>
    implements $ClassBuildingCopyWith<$Res> {
  factory _$$_ClassBuildingCopyWith(
          _$_ClassBuilding value, $Res Function(_$_ClassBuilding) then) =
      __$$_ClassBuildingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String location});
}

/// @nodoc
class __$$_ClassBuildingCopyWithImpl<$Res>
    extends _$ClassBuildingCopyWithImpl<$Res, _$_ClassBuilding>
    implements _$$_ClassBuildingCopyWith<$Res> {
  __$$_ClassBuildingCopyWithImpl(
      _$_ClassBuilding _value, $Res Function(_$_ClassBuilding) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$_ClassBuilding(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassBuilding implements _ClassBuilding {
  _$_ClassBuilding(
      {required this.id, required this.name, required this.location});

  factory _$_ClassBuilding.fromJson(Map<String, dynamic> json) =>
      _$$_ClassBuildingFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String location;

  @override
  String toString() {
    return 'ClassBuilding(id: $id, name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassBuilding &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassBuildingCopyWith<_$_ClassBuilding> get copyWith =>
      __$$_ClassBuildingCopyWithImpl<_$_ClassBuilding>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassBuildingToJson(
      this,
    );
  }
}

abstract class _ClassBuilding implements ClassBuilding {
  factory _ClassBuilding(
      {required final int id,
      required final String name,
      required final String location}) = _$_ClassBuilding;

  factory _ClassBuilding.fromJson(Map<String, dynamic> json) =
      _$_ClassBuilding.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_ClassBuildingCopyWith<_$_ClassBuilding> get copyWith =>
      throw _privateConstructorUsedError;
}
