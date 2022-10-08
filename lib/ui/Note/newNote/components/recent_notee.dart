import 'package:flutter/material.dart';
import 'package:note_taking_app/backend/backend.dart';
import 'package:note_taking_app/backend/cloud_note.dart';

class RecentNotee extends StatefulWidget {
  const RecentNotee({Key? key}) : super(key: key);

  @override
  State<RecentNotee> createState() => _RecentNoteeState();
}

class _RecentNoteeState extends State<RecentNotee> {
  late final List<CloudNote> allNotes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: DbStorage().getAllNotes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: allNotes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 155.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            allNotes[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            allNotes[index].contentText,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
