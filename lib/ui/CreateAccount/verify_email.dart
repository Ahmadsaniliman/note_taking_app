import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15.0,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40.0,
                ),
                child: Text(
                  'Notely',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 60.0,
                ),
                child: Image.asset('assests/images/Group 82 1.png'),
              ),
              const Text('Please You Need To Verify Your Email'),
              const SizedBox(height: 10.0),
              DefaultButton(
                text: 'Send Email Verification',
                press: () async {
                  FirebaseAuth.instance.currentUser!.sendEmailVerification();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Hhhhhhhhhhh extends StatelessWidget {
  const Hhhhhhhhhhh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
