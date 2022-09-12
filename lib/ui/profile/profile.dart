import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/profile/components/body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Body(),
    );
  }
}
