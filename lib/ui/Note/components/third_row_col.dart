import 'package:flutter/material.dart';

class ThirdRowCol extends StatelessWidget {
  const ThirdRowCol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
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
        Container(
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
      ],
    );
  }
}
