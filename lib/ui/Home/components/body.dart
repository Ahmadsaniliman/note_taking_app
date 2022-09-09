import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/Home/components/page_rollerr.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35.0),
        const Text(
          'Notely',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        Image.asset(
          'assests/images/Group 82 1.png',
          width: 250,
          height: 300,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'World"s Safest And\n Largest Digital NoteBook',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Notely is the world"s safest, largest and intelligent digital notebook. Join over\n 10M+ user already Notely',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        const PageRollerr(),
        const SizedBox(height: 40.0),
        DefaultButton(
          press: () {
            Navigator.of(context).pushNamed(createAccountRoute);
          },
          text: 'Get Started',
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Already Have An Account?',
          style: TextStyle(
            color: Color(0xFFD9614C),
          ),
        ),
      ],
    );
  }
}
