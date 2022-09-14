import 'package:flutter/material.dart';

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 155.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Trends List',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text('* Glassmorphism'),
              Text('* Claymorphism'),
              Text('* Big Typography'),
              Text('* 3d Illustrations'),
              Text('n* Flat Colors...'),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 155.0,
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
              SizedBox(height: 5.0),
              Text(
                'Accessibility is the practice of making your websites usable by as many people as possible. We traditionally think of this as being about people with disabilities...',
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 155.0,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Groceries',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 5.0),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
                  Text('2x Apples'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
                  Text('6x Eggs'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
                  Text('1x Broccoli'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
                  Text('5x Maggie L'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
                  Text('2x Cupcakes'),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 5.0),
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
