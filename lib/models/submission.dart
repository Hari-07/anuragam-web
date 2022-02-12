import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'submission.g.dart';

@JsonSerializable()
class Submission {
  late String message;
  late String contact;
  late double randomValue;

  Submission({
    required this.message,
    required this.contact,
    required this.randomValue,
  });

  factory Submission.empty() {
    return Submission(
      message: '',
      contact: '',
      randomValue: Random().nextDouble(),
    );
  }

  @override
  String toString() {
    return '$message, $contact';
  }

  factory Submission.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFromJson(json);
  Map<String, dynamic> toJson() => _$SubmissionToJson(this);
}
