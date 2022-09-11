import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Home/components/page_roller.dart';

class PageRollerr extends StatelessWidget {
  const PageRollerr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => PageRoller(index: index),
        )
      ],
    );
  }
}
