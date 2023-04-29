import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_parsing.freezed.dart';
part 'error_parsing.g.dart';

@freezed
class ErrorParsing with _$ErrorParsing {
  factory ErrorParsing({
    required String msg,
  }) = _ErrorParsing;
  factory ErrorParsing.fromJson(Map<String, dynamic> json) => _$ErrorParsingFromJson(json);
}
