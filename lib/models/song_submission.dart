import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:validators/validators.dart';

part 'song_submission.g.dart';

@JsonSerializable()
class SongSubmission {
  late String link;
  late double randomValue;
  late int confirm;

  SongSubmission({
    required this.link,
    required this.randomValue,
    required this.confirm,
  });

  factory SongSubmission.empty() {
    return SongSubmission(
      link: '',
      randomValue: Random().nextDouble(),
      confirm: 1,
    );
  }

  @override
  String toString() {
    return '$link';
  }

  bool isValid() {
    return isURL(
      link,
      hostWhitelist: [
        'youtu.be',
        'www.youtube.com',
        'youtube.com',
        'open.spotify.com',
        'spotify.com',
        'www.spotify.com',
        'music.apple.com',
        'wynk.in',
      ]
    );
  }

  factory SongSubmission.fromJson(Map<String, dynamic> json) =>
      _$SongSubmissionFromJson(json);
  Map<String, dynamic> toJson() => _$SongSubmissionToJson(this);
}
