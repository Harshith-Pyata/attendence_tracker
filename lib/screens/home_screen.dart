import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return "Good Morning";
    if (hour < 17) return "Good Afternoon";
    return "Good Evening";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(16, 50, 16, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// LEFT SIDE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "AttendEase",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Smart attendance made simple",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      getGreeting(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Dileep",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                /// RIGHT SIDE
                Row(
                  children: const [
                    _SettingsButton(),
                    SizedBox(width: 10),
                    ProfileAvatar(initial: 'S'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      /// BODY
      body: const Center(
        child: Text(
          "Home Body Content",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
class _SettingsButton extends StatelessWidget {
  const _SettingsButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings, color: Colors.white),
      onPressed: () {
        // Navigate to settings
      },
    );
  }
}
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
