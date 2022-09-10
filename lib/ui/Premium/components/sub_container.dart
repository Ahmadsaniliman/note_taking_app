import 'package:flutter/material.dart';

class SubscriptionCont extends StatelessWidget {
  const SubscriptionCont({
    Key? key,
    required int currentOne,
    required this.data,
    required this.index,
  })  : _currentOne = currentOne,
        super(key: key);

  final int _currentOne;
  final int index;
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: _currentOne == index ? const Color(0xFFD9614C) : Colors.white,
          width: 7,
        ),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: Column(
        children: [
          Text('${data[index]["text"]}'),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.00,
              bottom: 15.0,
            ),
            child: Text(
              '${data[index]["price"]}',
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text('${data[index]["text1"]}'),
        ],
      ),
    );
  }
}
