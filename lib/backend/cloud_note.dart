import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note_taking_app/backend/user_text.dart';

class CloudNote {
  final String title;
  final String contentText;

  CloudNote({
    required this.title,
    required this.contentText,
  });

  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : title = snapshot.data()[userTitle],
        contentText = snapshot.data()[userContent];
}
