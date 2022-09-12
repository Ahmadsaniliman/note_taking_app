import 'package:flutter/material.dart';
import 'package:note_taking_app/ui/profile/components/profile_card.dart';
import 'package:note_taking_app/ui/profile/components/profile_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 25.0,
      ),
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          const Text(
            'Notely',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const ProfileImageAndName(),
          Column(
            children: const [
              ProfileCard(
                image: 'assests/icons/path.png',
                text: 'Buy Premium',
              ),
              ProfileCard(
                image: 'assests/icons/Vector 379.png',
                text: 'Edit Profile',
              ),
              ProfileCard(
                image: 'assests/icons/Subtract.png',
                text: 'App Theme',
              ),
              ProfileCard(
                image: 'assests/icons/path (2).png',
                text: 'Notification',
              ),
              ProfileCard(
                image: 'assests/icons/path (1).png',
                text: 'Security',
              ),
              ProfileCard(
                image: 'assests/icons/Subtract (1).png',
                text: 'Log Out',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
