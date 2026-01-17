import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String initial;

  const ProfileAvatar({
    super.key,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Profile tapped');
      },
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.black,
        child: Text(
          initial,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
