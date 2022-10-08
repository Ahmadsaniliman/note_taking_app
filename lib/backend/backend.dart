// ignore_for_file: equal_keys_in_map, duplicate_ignore

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note_taking_app/backend/cloud_note.dart';
import 'package:note_taking_app/backend/user_text.dart';

class DbStorage {
  final dbNotes = FirebaseFirestore.instance.collection('notes');

  DbStorage._sharedInstance();
  static final DbStorage shared = DbStorage._sharedInstance();
  factory DbStorage() => shared;

  Future<CloudNote> createNote() async {
    try {
      final newNote = await dbNotes.add({
        userTitle: '',
        // ignore: equal_keys_in_map
        userContent: '',
      });

      await newNote.get();
      return CloudNote(
        title: '',
        contentText: '',
      );
    } catch (e) {
      throw CouldNotCReateNoteException();
    }
  }

  Future<void> deleteNote() async {
    try {
      await dbNotes.doc().delete();
    } catch (e) {
      throw CouldNotDeleteNoteException();
    }
  }

  Future<void> updateNote() async {
    try {
      await dbNotes.doc().update({
        userTitle: '',
        userContent: '',
      });
    } catch (e) {
      throw CouldNotUpdateNoteException();
    }
  }

  Stream<Iterable<CloudNote>> getAllNotes() {
    try {
      return dbNotes.snapshots().map(
            (doc) => doc.docs
                .map((e) => CloudNote.fromSnapshot(e))
                // ignore: unrelated_type_equality_checks
                .where((note) => dbNotes.id == note),
          );
    } catch (e) {
      throw CouldNotGetAllNoteNoteException();
    }
  }
}

class CouldNotCReateNoteException implements Exception {}

class CouldNotDeleteNoteException implements Exception {}

class CouldNotUpdateNoteException implements Exception {}

class CouldNotGetAllNoteNoteException implements Exception {}
