// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submission _$SubmissionFromJson(Map<String, dynamic> json) => Submission(
      name: json['name'] as String,
      message: json['message'] as String,
      contact: json['contact'] as String,
    );

Map<String, dynamic> _$SubmissionToJson(Submission instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'contact': instance.contact,
    };
