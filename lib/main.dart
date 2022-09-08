import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Taking App',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
