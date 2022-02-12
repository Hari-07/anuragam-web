import 'dart:math';

import 'package:anuragam_website/models/song_submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SubmissionInterface {
  static Future<void> addSubmission(Submission submission) async {
    try {
      final collection = FirebaseFirestore.instance.collection('submissions');
      await collection.add(submission.toJson());
    } on Exception {
      print('Error Occured');
    }
  }

  static Future<void> addSongSubmission(SongSubmission songSubmission) async {
    try {
      final collection = FirebaseFirestore.instance.collection('songSubmissions');
      await collection.add(songSubmission.toJson());
    } on Exception {
      print('Error Occured');
    }
  }

  static Future<Submission> getSubmission() async {
    try {
      final collection = FirebaseFirestore.instance.collection('submissions');
      final randomIdentifier = Random().nextDouble();
      var res = await collection.orderBy('randomValue').startAt([randomIdentifier]).limit(1).get();
      if(res.size == 0) {
        res = await collection.orderBy('randomValue', descending: true).startAt([randomIdentifier]).limit(1).get();
      }
      return Submission.fromJson(res.docs[0].data());
    } on Exception {
      print('Error Occured');
      return Submission.empty();
    }
  }

  static Future<SongSubmission> getSongSubmission() async {
    try {
      final collection = FirebaseFirestore.instance.collection('songSubmissions');
      final randomIdentifier = Random().nextDouble();
      var res = await collection.orderBy('randomValue').startAt([randomIdentifier]).limit(1).get();
      if(res.size == 0) {
        res = await collection.orderBy('randomValue', descending: true).startAt([randomIdentifier]).limit(1).get();
      }
      return SongSubmission.fromJson(res.docs[0].data());
    } on Exception {
      print('Error Occured');
      return SongSubmission.empty();
    }
  }
}
