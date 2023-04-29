// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_parsing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorParsing _$ErrorParsingFromJson(Map<String, dynamic> json) {
  return _ErrorParsing.fromJson(json);
}

/// @nodoc
mixin _$ErrorParsing {
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorParsingCopyWith<ErrorParsing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorParsingCopyWith<$Res> {
  factory $ErrorParsingCopyWith(
          ErrorParsing value, $Res Function(ErrorParsing) then) =
      _$ErrorParsingCopyWithImpl<$Res, ErrorParsing>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$ErrorParsingCopyWithImpl<$Res, $Val extends ErrorParsing>
    implements $ErrorParsingCopyWith<$Res> {
  _$ErrorParsingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorParsingCopyWith<$Res>
    implements $ErrorParsingCopyWith<$Res> {
  factory _$$_ErrorParsingCopyWith(
          _$_ErrorParsing value, $Res Function(_$_ErrorParsing) then) =
      __$$_ErrorParsingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_ErrorParsingCopyWithImpl<$Res>
    extends _$ErrorParsingCopyWithImpl<$Res, _$_ErrorParsing>
    implements _$$_ErrorParsingCopyWith<$Res> {
  __$$_ErrorParsingCopyWithImpl(
      _$_ErrorParsing _value, $Res Function(_$_ErrorParsing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_ErrorParsing(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorParsing implements _ErrorParsing {
  _$_ErrorParsing({required this.msg});

  factory _$_ErrorParsing.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorParsingFromJson(json);

  @override
  final String msg;

  @override
  String toString() {
    return 'ErrorParsing(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorParsing &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorParsingCopyWith<_$_ErrorParsing> get copyWith =>
      __$$_ErrorParsingCopyWithImpl<_$_ErrorParsing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorParsingToJson(
      this,
    );
  }
}

abstract class _ErrorParsing implements ErrorParsing {
  factory _ErrorParsing({required final String msg}) = _$_ErrorParsing;

  factory _ErrorParsing.fromJson(Map<String, dynamic> json) =
      _$_ErrorParsing.fromJson;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorParsingCopyWith<_$_ErrorParsing> get copyWith =>
      throw _privateConstructorUsedError;
}
