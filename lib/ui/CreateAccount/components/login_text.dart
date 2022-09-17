import 'package:flutter/material.dart';

class LoginHeadText extends StatelessWidget {
  const LoginHeadText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Notely',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text('Login Into Your Account'),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 30.0,
          ),
          child: Text(
            'Join Notely for free. Create and share \n unlimited note with your friends',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
