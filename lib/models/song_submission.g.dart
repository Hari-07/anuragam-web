// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongSubmission _$SongSubmissionFromJson(Map<String, dynamic> json) =>
    SongSubmission(
      link: json['link'] as String,
      randomValue: (json['randomValue'] as num).toDouble(),
    );

Map<String, dynamic> _$SongSubmissionToJson(SongSubmission instance) =>
    <String, dynamic>{
      'link': instance.link,
      'randomValue': instance.randomValue,
    };
