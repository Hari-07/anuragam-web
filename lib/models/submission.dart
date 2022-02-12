import 'package:json_annotation/json_annotation.dart';

part 'submission.g.dart';

@JsonSerializable()
class Submission {
  late String message;
  late String contact;

  Submission({
    required this.message,
    required this.contact,
  });

  factory Submission.empty() {
    return Submission(
      message: '',
      contact: '',
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
