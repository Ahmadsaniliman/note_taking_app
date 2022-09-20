import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/ui/CreateAccount/components/login_text.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 25.0,
          ),
          child: FutureBuilder(
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  Column(
                    children: [
                      const LoginHeadText(),
                      TextFieldName(
                        labelText: 'Email Adress',
                        hintText: 'Enter Your Email Address',
                        controller: _emailController,
                      ),
                      TextFieldName(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        controller: _passwordController,
                      ),
                      DefaultButton(
                        text: '',
                        press: () {},
                      ),
                    ],
                  );
                  break;
                default:
                  return const CircularProgressIndicator();
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
