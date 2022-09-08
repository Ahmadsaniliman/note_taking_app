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
      height: 5,
      width: 5,
      decoration: const BoxDecoration(
        color: Color(0xFFD9614C),
      ),
    );
  }
}
