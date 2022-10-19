import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';

class NewNoteView extends StatefulWidget {
  const NewNoteView({Key? key}) : super(key: key);

  @override
  State<NewNoteView> createState() => _NewNoteViewState();
}

class _NewNoteViewState extends State<NewNoteView> {
  late final TextEditingController _titleController;
  late final TextEditingController _textController;

  @override
  void initState() {
    _titleController = TextEditingController();
    _textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   floatingActionButton: IconButton(
      //     onPressed: () async {
      //       if (_titleController.text.isEmpty && _textController.text.isEmpty) {
      //         await showErrorAlertDialog(
      //           context: context,
      //           contentText:
      //               'Title Or Content Field Is Empty Please Input a Text',
      //         );
      //       } else {
      //         await DbStorage().createNote();
      //       }
      //     },
      //     icon: const Icon(
      //       Icons.save,
      //     ),
      //   ),
      body: Column(
        children: [
          TextFieldName(
            labelText: 'Title',
            hintText: 'title',
            controller: _titleController,
          ),
          TextFieldName(
            labelText: 'Content',
            hintText: 'Content',
            controller: _textController,
          ),
          DefaultButton(
            text: 'Save',
            press: () async {
              final user =
                  FirebaseFirestore.instance.collection('limanNotes').doc();
              final title = _titleController.text;
              final text = _textController.text;

              await user.set({
                title: '',
                text: '',
              });
            },
          ),
        ],
      ),
    );
  }
}
