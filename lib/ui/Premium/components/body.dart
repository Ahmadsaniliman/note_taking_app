import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/Premium/components/desc_text.dart';
import 'package:note_taking_app/ui/Premium/components/sub_container.dart';
import 'package:note_taking_app/ui/Premium/components/title_row.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentOne = 0;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "text": "Annual",
        "price": "\$79.99",
        "text1": "per year",
      },
      {
        "text": "Monthly",
        "price": "\$7.99",
        "text1": "per month",
      },
    ];
    return Column(
      children: [
        const SizedBox(height: 30.0),
        const TitleRow(),
        const DescText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              data.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentOne = index;
                  });
                },
                child: SubscriptionCont(
                  currentOne: _currentOne,
                  data: data,
                  index: index,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25.0),
        DefaultButton(
          press: () {
            Navigator.of(context).pushNamed(noteViewRoute);
          },
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
