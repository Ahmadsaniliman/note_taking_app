import 'package:flutter/material.dart';

class SubContainer extends StatelessWidget {
  const SubContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 247, 220, 220),
          width: 7,
        ),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: Column(
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
    );
  }
}
