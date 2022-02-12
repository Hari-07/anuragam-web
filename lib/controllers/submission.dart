import 'package:anuragam_website/models/song_submission.dart';
import 'package:anuragam_website/models/submission.dart';

class SubmissionInterface {
  static Future<void> addSubmission(Submission submission) async {
    // try {
    //   final collection = FirebaseFirestore.instance.collection('submissions');
    //   await collection.add(submission.toJson());
    // } on Exception {
    //   print('Error Occured');
    // }
  }

  static Future<void> addSongSubmission(SongSubmission songSubmission) async {
    // try {
    //   final collection = FirebaseFirestore.instance.collection('submissions');
    //   await collection.add(submission.toJson());
    // } on Exception {
    //   print('Error Occured');
    // }
  }

  static Future<Submission> getSubmission() async {
    // try {
    //   final collection = FirebaseFirestore.instance.collection('submissions');
    //   final res = await collection.limit(1).get();
    //   return Submission.fromJson(res.docs[0].data());
    // } on Exception {
    //   print('Error Occured');
    //   return Submission.empty();
    // }
    return Submission.empty();
  }

  static Future<SongSubmission> getSongSubmission() async {
    // try {
    //   final collection = FirebaseFirestore.instance.collection('submissions');
    //   final res = await collection.limit(1).get();
    //   return Submission.fromJson(res.docs[0].data());
    // } on Exception {
    //   print('Error Occured');
    //   return Submission.empty();
    // }
    return SongSubmission.empty();
  }
}
