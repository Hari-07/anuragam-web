import 'dart:math';

import 'package:anuragam_website/models/song_submission.dart';
import 'package:anuragam_website/models/submission.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SubmissionInterface {
  static Future<void> addSubmission(Submission submission) async {
    try {
      final collection = FirebaseFirestore.instance.collection('submissions');
      await collection.add(submission.toJson());
    } on Exception catch(e){
      print('Error Occured: $e');
    }
  }

  static Future<void> addSongSubmission(SongSubmission songSubmission) async {
    try {
      final collection = FirebaseFirestore.instance.collection('songSubmissions');
      await collection.add(songSubmission.toJson());
    } on Exception catch(e){
      print('Error Occured: $e');
    }
  }

  static Future<Submission> getSubmission() async {
    try {
      final collection = FirebaseFirestore.instance.collection('submissions');
      final randomIdentifier = Random().nextDouble();
      var res = await collection.where('confirm', isEqualTo: 1).orderBy('randomValue').startAt([randomIdentifier]).limit(1).get();
      if(res.size == 0) {
        res = await collection.where('confirm', isEqualTo: 1).orderBy('randomValue', descending: true).startAt([randomIdentifier]).limit(1).get();
      }
      return Submission.fromJson(res.docs[0].data());
    } on Exception catch(e){
      print('Error Occured: $e');
      return Submission.empty();
    }
  }

  static Future<SongSubmission> getSongSubmission() async {
    try {
      final collection = FirebaseFirestore.instance.collection('songSubmissions');
      final randomIdentifier = Random().nextDouble();
      var res = await collection.where('confirm', isEqualTo: 1).orderBy('randomValue').startAt([randomIdentifier]).limit(1).get();
      if(res.size == 0) {
        res = await collection.where('confirm', isEqualTo: 1).orderBy('randomValue', descending: true).startAt([randomIdentifier]).limit(1).get();
      }
      return SongSubmission.fromJson(res.docs[0].data());
    } on Exception catch (e){
      print('Error Occured: $e');
      return SongSubmission.empty();
    }
  }
}
