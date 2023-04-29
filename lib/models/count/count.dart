import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.freezed.dart';
part 'count.g.dart';

@freezed
class Count with _$Count {
  factory Count({
    required int ABSENT,
    required int LATE,
    required int OK,
  }) = _Count;
  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}
