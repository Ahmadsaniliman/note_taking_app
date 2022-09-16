import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/Note/components/first_column.dart';
import 'package:note_taking_app/ui/Note/components/recent_build_app_bar.dart';
import 'package:note_taking_app/ui/Note/components/second_column.dart';
import 'package:note_taking_app/ui/Note/components/third_row_col.dart';

class RecentNoteView extends StatelessWidget {
  const RecentNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: buildReAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FirstText(),
                  SecondColumn(),
                ],
              ),
              const SizedBox(height: 10.0),
              const ThirdRowCol(),
              const SizedBox(height: 15.0),
              DefaultButton(
                text: 'View Profile',
                press: () {
                  Navigator.of(context).pushNamed(profileViewRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
