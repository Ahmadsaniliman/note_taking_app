// ignore_for_file: equal_keys_in_map

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:note_taking_app/backend/cloud_note.dart';
import 'package:note_taking_app/backend/user_text.dart';

class DbStorage {
  final dbNotes = FirebaseFirestore.instance.collection('notes');

  DbStorage._sharedInstance();
  static final DbStorage shared = DbStorage._sharedInstance();
  factory DbStorage() => shared;

  Future<CloudNote> createNote({
    required String title,
    required String text,
  }) async {
    try {
      final newNote = await dbNotes.add({
        userTitle: '',
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
            (snapshot) => snapshot.docs.map(
              (note) => CloudNote.fromSnapshot(note),
            ),
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
