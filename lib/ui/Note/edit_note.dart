import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';
import 'package:note_taking_app/ui/Note/components/build_edit_note.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  late final TextEditingController _editNoteController;
  @override
  void initState() {
    super.initState();
    _editNoteController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _editNoteController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: buildEditNoteAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Cerebral palsy sport',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Cerebral palsy sport classification is a classification system used by sports that include people with cerebral palsy (CP) with different degrees of severity to compete fairly against each other and against others with different types of disabilities. In general, Cerebral Palsy-International Sports and Recreation Association (CP-ISRA) serves as the body in charge of classification for cerebral palsy sport, though some sports have their own classification systems which apply to CP sportspeople|',
              ),
              TextFieldName(
                labelText: '',
                hintText: '',
                controller: _editNoteController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
