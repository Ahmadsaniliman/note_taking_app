import 'package:flutter/material.dart';

AppBar buildEditNoteAppBar() {
  return AppBar(
    title: const Text(
      'Edit Note',
    ),
    elevation: 0,
    backgroundColor: const Color(0xFFE5E5E5),
    foregroundColor: Colors.black,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios),
    ),
    actions: [
      PopupMenuButton(
        itemBuilder: (context) => [],
      )
    ],
  );
}
