import 'package:flutter/material.dart';

class ProfileImageAndName extends StatelessWidget {
  const ProfileImageAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Image.asset('assests/images/Mask Group 1.png'),
        const Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
          child: Text(
            'Muhammad LIman',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child: Text('Plateau,Nigeria'),
        ),
      ],
    );
  }
}
