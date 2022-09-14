import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Note/components/recent_build_app_bar.dart';

class RecentNoteView extends StatelessWidget {
  const RecentNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: buildReAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                FirstText(),
                SecondColumn(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: const [
              Text(
                'Trends List',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Text('* Glassmorphism'),
              Text('* Claymorphism'),
              Text('* Big Typography'),
              Text('* 3d Illustrations'),
              Text('n* Flat Colors...'),
            ],
          ),
        ),
        Container(
          width: 150.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: const [
              Text(
                'School Essay on Accessibility',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Accessibility is the practice of making your websites usable by as many people as possible. We traditionally think of this as being about people with disabilities...',
              ),
            ],
          ),
        ),
        Container(
          width: 150.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              const Text(
                'Groceries',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('2x Apples'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('6x Eggs'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('1x Broccoli'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('5x Maggie L'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('2x Cupcakes'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  Text('3x Ball Pens'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FirstText extends StatelessWidget {
  const FirstText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: const [
          Text(
            'Cerebral palsy sport',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          Text(
            'Cerebral palsy sport classification is a classification system used by sports that include people with cerebral palsy (CP) with different degrees of severity to compete fairly against each...',
          ),
          SizedBox(height: 20.0),
          Text(
            'Emotions of Typography',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          Text(
            'Typography is a part of user interface. Many of us focus on User Experience rather than User Interface as a novice UI/UX designer since deciding a typeface, colors, and typefaces is a pain as it takes a lot of...',
          ),
        ],
      ),
    );
  }
}
