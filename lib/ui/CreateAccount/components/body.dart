import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/components/create_acc_text.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _fullNameController;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          const CreateAccountText(),
          TextFieldName(
            hintText: 'Liman Ahmad Sani',
            labelText: 'Full Name',
            controller: _fullNameController,
          ),
          const SizedBox(height: 20.0),
          TextFieldName(
            hintText: 'saniahmad@gmail.com',
            labelText: 'Email Address',
            controller: _emailController,
          ),
          const SizedBox(height: 20.0),
          TextFieldName(
            hintText: '*********',
            labelText: 'Password',
            controller: _passwordController,
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
