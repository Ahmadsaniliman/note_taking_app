import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/firebase_options.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/components/login_text.dart';
import 'package:note_taking_app/ui/CreateAccount/components/name_text_field.dart';
import 'dart:developer' as devtool show log;

import 'package:note_taking_app/util/util.dart';

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
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  return Column(
                    children: [
                      const SizedBox(height: 30.0),
                      const LoginHeadText(),
                      TextFieldName(
                        labelText: 'Email Adress',
                        hintText: 'Enter Your Email Address',
                        controller: _emailController,
                      ),
                      const SizedBox(height: 20.0),
                      TextFieldName(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        controller: _passwordController,
                      ),
                      const SizedBox(height: 100.0),
                      DefaultButton(
                        text: 'Login',
                        press: () async {
                          try {
                            final email = _emailController.text;
                            final password = _passwordController.text;
                            // final cUser = FirebaseAuth.instance.currentUser!;
                            // if (cUser.emailVerified) {
                            final registerUser = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                            Navigator.of(context).pushNamed(
                              noteViewRoute,
                            );
                            devtool.log(
                              registerUser.toString(),
                            );

                            // }
                            //  else {
                            //   Navigator.of(context).pushNamed(
                            //     verifyEmailViewRoute,
                            //   );
                            // }
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'Wrong Password') {
                              await showErrorAlertDialog(
                                context: context,
                                contentText: 'Wrong Password Used',
                              );
                            } else if (e.code == 'User-not-found') {
                              await showErrorAlertDialog(
                                context: context,
                                contentText: 'User Not Found',
                              );
                            }
                          }
                          //    catch (_) {
                          //     await showErrorAlertDialog(
                          //       context: context,
                          //       contentText: _.toString(),
                          //     );
                          //   }
                        },
                      ),
                      const SizedBox(height: 10.0),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            createAccountRoute,
                          );
                        },
                        child: const Text(
                          'Dont"t have An Account? Create',
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
        ),
      ),
    );
  }
}
