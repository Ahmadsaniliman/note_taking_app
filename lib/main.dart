import 'package:flutter/material.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/create_aacount.dart';
import 'package:note_taking_app/ui/Home/home.dart';
import 'package:note_taking_app/ui/Note/note.dart';
import 'package:note_taking_app/ui/Note/recent_note.dart';
import 'package:note_taking_app/ui/Premium/premium.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Taking App',
      theme: ThemeData(),
      home: const HomePage(),
      routes: {
        createAccountRoute: (context) => const CreateAccountView(),
        premiumViewRoute: (context) => const PremiumSubscriptionView(),
        noteViewRoute: (context) => const NoteView(),
        recentViewRoute: (context) => const RecentNoteView(),
      },
    );
  }
}
