import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/Note/components/build_app_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80.0),
            Image.asset('assests/images/Group 84 1.png'),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                  child: Text(
                    'Create Your Note',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Add a note about anything (your thougths on climate change, or your history eassy )\n and share it with the world',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 45.0),
            DefaultButton(
              text: 'Create A Note',
              press: () {
                Navigator.of(context).pushNamed(recentViewRoute);
              },
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Import a note',
              style: TextStyle(
                color: Color(0xFFD9614C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
