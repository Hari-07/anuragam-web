import 'package:json_annotation/json_annotation.dart';

part 'song_submission.g.dart';

@JsonSerializable()
class SongSubmission {
  late String link;

  SongSubmission({
    required this.link,
  });

  factory SongSubmission.empty() {
    return SongSubmission(
      link: '',
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
