import 'package:flutter/material.dart';

class PageRoller extends StatelessWidget {
  const PageRoller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 5.0,
      ),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: const Color(0xFFD9614C),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
