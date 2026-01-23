import 'package:flutter/material.dart';
import 'profile_screen.dart';
class HomeScreen extends StatelessWidget {
  final VoidCallback onProfileTap;
  const HomeScreen({
     super.key,
     required this.onProfileTap
  });

  String getGreeting() {
    final hour = DateTime
        .now()
        .hour;
    if (hour < 12) return "Good Morning";
    if (hour < 17) return "Good Afternoon";
    return "Good Evening";
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            pinned: true,
            expandedHeight: media.size.height * 0.26,
            // responsive height
            automaticallyImplyLeading: false,

            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
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
                          SizedBox(height: media.size.height * 0.02),
                          Text(
                            getGreeting(),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 6),
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
                        children: [
                          const _SettingsButton(),
                          const SizedBox(width: 10),
                          ProfileAvatar(initial: 'S',
                            onTap: onProfileTap,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// BODY CONTENT
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "Home Body Content",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
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
  final VoidCallback onTap;

  const ProfileAvatar({
    super.key,
    required this.initial,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap, // ✅ call parent
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
