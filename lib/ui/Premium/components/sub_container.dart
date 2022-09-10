import 'package:flutter/material.dart';

class SubContainer extends StatefulWidget {
  const SubContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SubContainer> createState() => _SubContainerState();
}

class _SubContainerState extends State<SubContainer> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return GestureDetector(
      onTap: () {
        setState(() {
          index = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: index == index ? const Color(0xFFD9614C) : Colors.green,
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
      ),
    );
  }
}
