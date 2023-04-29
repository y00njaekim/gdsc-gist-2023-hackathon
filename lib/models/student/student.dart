// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  factory Student(
      {required int id,
      required String name,
      required String major,
      required String phone,
      required String email}) = _Student;
  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
