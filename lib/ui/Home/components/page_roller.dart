import 'package:flutter/material.dart';

class PageRoller extends StatelessWidget {
  const PageRoller({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    int currIndx = 0;
    return Container(
      margin: const EdgeInsets.only(
        right: 5.0,
      ),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currIndx == index
            ? const Color(0xFFD9614C)
            : const Color(0xFFD9614C).withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
