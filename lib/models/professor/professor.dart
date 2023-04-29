import 'package:freezed_annotation/freezed_annotation.dart';

part 'professor.freezed.dart';
part 'professor.g.dart';

@freezed
class Professor with _$Professor {
  factory Professor({
    required int id,
    required String name,
    required String major,
    required String phone,
    required String email,
  }) = _Professor;
  factory Professor.fromJson(Map<String, dynamic> json) =>
      _$ProfessorFromJson(json);
}
