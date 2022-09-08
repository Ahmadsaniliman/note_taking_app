import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD9614C),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
