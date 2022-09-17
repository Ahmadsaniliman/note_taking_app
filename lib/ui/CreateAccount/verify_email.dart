import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Notely'),
          const Text('Verify Your Email'),
          DefaultButton(
            text: 'Send Email Verification',
            press: () {},
          ),
        ],
      ),
    );
  }
}
