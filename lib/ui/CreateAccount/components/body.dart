import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/components/create_acc_text.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          const CreateAccountText(),
          const TextFieldName(
            hintText: 'Liman Ahmad Sani',
            labelText: 'Full Name',
          ),
          const SizedBox(height: 20.0),
          const TextFieldName(
            hintText: 'saniahmad@gmail.com',
            labelText: 'Email Address',
          ),
          const SizedBox(height: 20.0),
          const TextFieldName(
            hintText: '*********',
            labelText: 'Password',
          ),
          const SizedBox(height: 60.0),
          DefaultButton(
            text: 'Create Account',
            press: () {
              Navigator.of(context).pushNamed(premiumViewRoute);
            },
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Already Have An Account?',
            style: TextStyle(
              color: Color(0xFFD9614C),
            ),
          ),
        ],
      ),
    );
  }
}
