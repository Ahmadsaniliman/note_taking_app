import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RecentNotee extends StatefulWidget {
  const RecentNotee({Key? key}) : super(key: key);

  @override
  State<RecentNotee> createState() => _RecentNoteeState();
}

class _RecentNoteeState extends State<RecentNotee> {
  final dbNotes = FirebaseFirestore.instance.collection('notes');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: dbNotes.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: ListView.builder(
                  // itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return const Text('');
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
