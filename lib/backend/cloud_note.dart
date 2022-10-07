import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note_taking_app/backend/user_text.dart';

class Note {
  final String title;
  final String contentText;

  Note({
    required this.title,
    required this.contentText,
  });

  Note.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : title = snapshot.data()[userTitle],
        contentText = snapshot.data()[userContent];
}
