import 'package:cloud_firestore/cloud_firestore.dart';

class CloudNote {
  final dbNotes = FirebaseFirestore.instance.collection('notes');

  CloudNote._sharedInstance();
  static final CloudNote shared = CloudNote._sharedInstance();
  factory CloudNote() => shared;
}
