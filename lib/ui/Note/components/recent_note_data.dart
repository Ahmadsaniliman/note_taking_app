import 'package:flutter/material.dart';

class RecentNoteData {
  final Widget widget;

  RecentNoteData({
    required this.widget,
  });
}

final List<RecentNoteData> noteData = [
  RecentNoteData(
    widget: Container(
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
    ),
  ),
  RecentNoteData(
    widget: Container(
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
  ),
  RecentNoteData(
    widget: Container(
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
  ),
  RecentNoteData(
    widget: Container(
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
  ),
  RecentNoteData(
    widget: Container(
      padding: const EdgeInsets.all(10.0),
      width: 155.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'IG Posts',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text('* Typography Checklist'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
          Text('* Make 3D card'),
        ],
      ),
    ),
  ),
  RecentNoteData(
    widget: Container(
      padding: const EdgeInsets.all(10.0),
      width: 155.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Lamina Peak',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'Lamina Peak (70°32′S 68°45′WCoordinates: 70°32′S 68°45′W) is a prominent pyramid-shaped peak, 1,280 metres (4,200 ft) high, surmounting a stratified ridge which curves down from Mount Edred northeastward toward George VI Sound.',
          ),
        ],
      ),
    ),
  ),
];
