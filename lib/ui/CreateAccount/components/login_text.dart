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
        // SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
          child: Text(
            'Login Into Your Account',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 100.0,
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
