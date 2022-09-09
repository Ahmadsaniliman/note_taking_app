import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/ui/Premium/components/desc_text.dart';
import 'package:note_taking_app/ui/Premium/components/sub_container.dart';
import 'package:note_taking_app/ui/Premium/components/title_row.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30.0),
        const TitleRow(),
        const DescText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SubContainer(),
            SubContainer(),
          ],
        ),
        const SizedBox(height: 20.0),
        DefaultButton(
          press: () {},
          text: 'Subscribe',
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Restore Purchase',
          style: TextStyle(
            color: Color(0xFFD9614C),
          ),
        ),
      ],
    );
  }
}
