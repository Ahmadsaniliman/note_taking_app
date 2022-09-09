import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/Premium/components/body.dart';

class PremiumSubscriptionView extends StatelessWidget {
  const PremiumSubscriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 25.0,
        ),
        child: Body(),
      ),
    );
  }
}
