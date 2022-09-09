import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        SizedBox(width: 65.0),
        Text('Notely Premuim'),
        SizedBox(width: 45.0),
        Icon(
          Icons.cancel_outlined,
        ),
      ],
    );
  }
}
