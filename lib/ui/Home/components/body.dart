import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Home/components/page_rollerr.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 35.0),
        const Text(
          'Notely',
          style: TextStyle(fontSize: 20.0),
        ),
        const SizedBox(height: 10.0),
        Image.asset(
          'assests/images/Group 82 1.png',
          width: 250,
          height: 300,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'World"s Safest And Largest Digital NoteBook',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Notely is the world"s safest, largest and intelligent digital notebook. Join over 10M+ user already Notely',
          textAlign: TextAlign.center,
        ),
        const PageRollerr(),
        const SizedBox(height: 20.0),
        Container(
          height: 70.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFD9614C),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Center(
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ),
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
