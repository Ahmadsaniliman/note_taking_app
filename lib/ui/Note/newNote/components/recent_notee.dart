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
  late final DbStorage backend;

  @override
  void initState() {
    super.initState();
    backend = DbStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: DbStorage().getAllNotes(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: GridView.builder(
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
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
            );
          } else {
            return const Center(
              child: Text(
                'There is No Note Available',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
