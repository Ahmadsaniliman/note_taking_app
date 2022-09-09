import 'package:flutter/material.dart';

class DescText extends StatelessWidget {
  const DescText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Column(
        children: [
          Image.asset('assests/images/Group 83 1.png'),
          const SizedBox(height: 10.0),
          const Text(
            'Start Using Notely\n with Premium Benefits',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15.0),
          Row(
            children: const [
              Icon(Icons.check),
              SizedBox(width: 5.0),
              Text('Save unlimited note to a single project'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: const [
              Icon(Icons.check),
              SizedBox(width: 5.0),
              Text('Save unlimited note to a single project'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: const [
              Icon(Icons.check),
              SizedBox(width: 5.0),
              Text('Save unlimited note to a single project'),
            ],
          ),
        ],
      ),
    );
  }
}
