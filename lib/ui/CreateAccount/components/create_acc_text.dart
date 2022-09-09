import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    Key? key,
  }) : super(key: key);

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
        SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(
            'Create a free account',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40.0),
          child: Text(
            'Join Notely for free. Create and share \n unlimited note with your friends',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
