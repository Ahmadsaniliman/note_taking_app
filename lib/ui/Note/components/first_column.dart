import 'package:flutter/material.dart';

class FirstText extends StatelessWidget {
  const FirstText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.0,
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
          SizedBox(height: 5.0),
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
          SizedBox(height: 5.0),
          Text(
            'Typography is a part of user interface. Many of us focus on User Experience rather than User Interface as a novice UI/UX designer since deciding a typeface, colors, and typefaces is a pain as it takes a lot of...',
          ),
        ],
      ),
    );
  }
}
