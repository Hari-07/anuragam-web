// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submission _$SubmissionFromJson(Map<String, dynamic> json) => Submission(
      message: json['message'] as String,
      contact: json['contact'] as String,
      randomValue: (json['randomValue'] as num).toDouble(),
    );

Map<String, dynamic> _$SubmissionToJson(Submission instance) =>
    <String, dynamic>{
      'message': instance.message,
      'contact': instance.contact,
      'randomValue': instance.randomValue,
    };
