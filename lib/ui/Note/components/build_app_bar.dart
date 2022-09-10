import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: const Color(0xFFE5E5E5),
    title: const Text(
      'Notely',
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
  );
}
