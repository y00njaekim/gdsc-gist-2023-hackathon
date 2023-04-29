// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'professor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Professor _$ProfessorFromJson(Map<String, dynamic> json) {
  return _Professor.fromJson(json);
}

/// @nodoc
mixin _$Professor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessorCopyWith<Professor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessorCopyWith<$Res> {
  factory $ProfessorCopyWith(Professor value, $Res Function(Professor) then) =
      _$ProfessorCopyWithImpl<$Res, Professor>;
  @useResult
  $Res call({int id, String name, String major, String phone, String email});
}

/// @nodoc
class _$ProfessorCopyWithImpl<$Res, $Val extends Professor>
    implements $ProfessorCopyWith<$Res> {
  _$ProfessorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? major = null,
    Object? phone = null,
    Object? email = null,
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
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfessorCopyWith<$Res> implements $ProfessorCopyWith<$Res> {
  factory _$$_ProfessorCopyWith(
          _$_Professor value, $Res Function(_$_Professor) then) =
      __$$_ProfessorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String major, String phone, String email});
}

/// @nodoc
class __$$_ProfessorCopyWithImpl<$Res>
    extends _$ProfessorCopyWithImpl<$Res, _$_Professor>
    implements _$$_ProfessorCopyWith<$Res> {
  __$$_ProfessorCopyWithImpl(
      _$_Professor _value, $Res Function(_$_Professor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? major = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$_Professor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Professor implements _Professor {
  _$_Professor(
      {required this.id,
      required this.name,
      required this.major,
      required this.phone,
      required this.email});

  factory _$_Professor.fromJson(Map<String, dynamic> json) =>
      _$$_ProfessorFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String major;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'Professor(id: $id, name: $name, major: $major, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Professor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, major, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfessorCopyWith<_$_Professor> get copyWith =>
      __$$_ProfessorCopyWithImpl<_$_Professor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfessorToJson(
      this,
    );
  }
}

abstract class _Professor implements Professor {
  factory _Professor(
      {required final int id,
      required final String name,
      required final String major,
      required final String phone,
      required final String email}) = _$_Professor;

  factory _Professor.fromJson(Map<String, dynamic> json) =
      _$_Professor.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get major;
  @override
  String get phone;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ProfessorCopyWith<_$_Professor> get copyWith =>
      throw _privateConstructorUsedError;
}
