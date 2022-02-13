import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'submission.g.dart';

@JsonSerializable()
class Submission {
  late String message;
  late String contact;
  late double randomValue;
  late int confirm;

  Submission({
    required this.message,
    required this.contact,
    required this.randomValue,
    required this.confirm,
  });

  factory Submission.empty() {
    return Submission(
      message: '',
      contact: '',
      randomValue: Random().nextDouble(),
      confirm: 1,
    );
  }

  bool isValid(){
    return message.isNotEmpty && contact.isNotEmpty;
  }

  @override
  String toString() {
    return '$message, $contact';
  }

  factory Submission.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFromJson(json);
  Map<String, dynamic> toJson() => _$SubmissionToJson(this);
}
