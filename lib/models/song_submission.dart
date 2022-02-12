import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

part 'song_submission.g.dart';

@JsonSerializable()
class SongSubmission {
  late String link;
  late double randomValue;

  SongSubmission({
    required this.link,
    required this.randomValue,
  });

  factory SongSubmission.empty() {
    return SongSubmission(
      link: '',
      randomValue: Random().nextDouble(),
    );
  }

  @override
  String toString() {
    return '$link';
  }

  bool isValid(){
    return true;
  }

  factory SongSubmission.fromJson(Map<String, dynamic> json) =>
      _$SongSubmissionFromJson(json);
  Map<String, dynamic> toJson() => _$SongSubmissionToJson(this);
}
