import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  late final TextEditingController _forgotPasswordController;

  @override
  void initState() {
    super.initState();
    _forgotPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _forgotPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Notely'),
          TextFieldName(
            labelText: '',
            hintText: '',
            controller: _forgotPasswordController,
          ),
          DefaultButton(
            text: 'Send reset link',
            press: () async {
              final forgotPassword = _forgotPasswordController.text;
              await FirebaseAuth.instance.sendPasswordResetEmail(
                email: forgotPassword,
              );
            },
          ),
        ],
      ),
    );
  }
}
