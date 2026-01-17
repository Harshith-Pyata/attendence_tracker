import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const double appBarHeight = 260;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(appBarHeight),
        child: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Profile Photo
                GestureDetector(
                  onTap: () {
                    // Change profile picture
                  },
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                /// Name
                const Text(
                  "Chandu Sri Ram Dileep",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 12),

                /// Edit Button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: const Text("Edit Profile"),
                ),
              ],
            ),
          ),
        ),
      ),

      /// BODY
      body: const Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
