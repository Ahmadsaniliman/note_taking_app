import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/firebase_options.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/components/create_acc_text.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';
import 'dart:developer' as devtool show log;

import 'package:note_taking_app/util/util.dart';

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
      child: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
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
                    press: () async {
                      final email = _emailController.text;
                      final password = _passwordController.text;

                      try {
                        final user = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );

                        devtool.log(
                          user.toString(),
                        );

                        final currUser = FirebaseAuth.instance.currentUser!;
                        currUser.sendEmailVerification();

                        if (currUser.emailVerified) {
                          Navigator.of(context).pushNamed(
                            loginViewRoute,
                          );
                        } else {
                          Navigator.of(context).pushNamed(
                            verifyEmailViewRoute,
                          );
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'Weak-password') {
                          devtool.log('Waek Password');
                          await showErrorAlertDialog(
                            context: context,
                            contentText: 'Weak Password Used',
                          );
                        } else if (e.code == 'invalid-email') {
                          await showErrorAlertDialog(
                            context: context,
                            contentText: 'Invalid Email Used',
                          );
                        } else if (e.code == 'email-already-in-use') {
                          devtool.log('email already in use');
                          await showErrorAlertDialog(
                            context: context,
                            contentText: 'Email ALready In Use',
                          );
                        }
                      } catch (_) {
                        devtool.log(_.toString());
                        await showErrorAlertDialog(
                          context: context,
                          contentText: _.toString(),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        loginViewRoute,
                      );
                    },
                    child: const Text(
                      'Already Have An Account?',
                      style: TextStyle(
                        color: Color(0xFFD9614C),
                      ),
                    ),
                  ),
                ],
              );
            default:
              return const CircularProgressIndicator();
          }
          //   return const CircularProgressIndicator();
        },
      ),
    );
  }
}
