import 'package:json_annotation/json_annotation.dart';

part 'submission.g.dart';

@JsonSerializable()
class Submission {
  late String name;
  late String message;
  late String contact;

  Submission(
      {required this.name, required this.message, required this.contact});

  factory Submission.empty() {
    return Submission(
      name: '',
      message: '',
      contact: '',
    );
  }

  @override
  String toString() {
    return '$name, $message, $contact';
  }

  factory Submission.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFromJson(json);
  Map<String, dynamic> toJson() => _$SubmissionToJson(this);
}
