import 'package:flutter/material.dart';

class RecentNoteView extends StatelessWidget {
  const RecentNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFE5E5E5),
        title: const Text(
          'Recent Notes',
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) => const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 17.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
