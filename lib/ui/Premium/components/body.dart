import 'package:flutter/material.dart';
import 'package:note_taking_app/defaultButton/default_button.dart';
import 'package:note_taking_app/ui/Premium/components/desc_text.dart';
import 'package:note_taking_app/ui/Premium/components/title_row.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int _currentOne = 0;
    final List<Widget> data = [
      Column(
        children: const [
          Text('Annaul'),
          Padding(
            padding: EdgeInsets.only(
              top: 10.00,
              bottom: 15.0,
            ),
            child: Text(
              '\$76.99',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text('per year'),
        ],
      ),
      Column(
        children: const [
          Text('Monthly'),
          Padding(
            padding: EdgeInsets.only(
              top: 10.00,
              bottom: 15.0,
            ),
            child: Text(
              '\$7.99',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text('per month'),
        ],
      ),
    ];
    return Column(
      children: [
        const SizedBox(height: 30.0),
        const TitleRow(),
        const DescText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFFD9614C),
                      width: 7,
                    ),
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text('${data[index]}'),
                    ],
                  ),
                ),
              ),
            ),
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
