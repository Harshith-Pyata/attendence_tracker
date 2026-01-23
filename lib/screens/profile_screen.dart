import 'package:flutter/material.dart';
import 'package:attendemnce_app/profile_page/edit_profile.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const double appBarHeight = 260;
  Widget _buildItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    final color = isDestructive ? Colors.red : Colors.black87;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: isDestructive ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
      trailing: isDestructive
          ? null
          : const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    void openEditProfile(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        ),
      );
    }

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
                  // onTap: () {
                  //   // Change profile picture
                  // },
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
                  onPressed: () => openEditProfile(context),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _buildItem(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              // Navigate to Settings
            },
          ),
          _buildItem(
            icon: Icons.backup,
            title: 'Backup / Restore',
            onTap: () {
              // Navigate to Backup
            },
          ),
          _buildItem(
            icon: Icons.bar_chart,
            title: 'Reports',
            onTap: () {
              // Navigate to Reports
            },
          ),
          _buildItem(
            icon: Icons.feedback,
            title: 'Feedback',
            onTap: () {
              // Navigate to Feedback
            },
          ),
          _buildItem(
            icon: Icons.description,
            title: 'Terms & Application',
            onTap: () {
              // Navigate to Terms
            },
          ),

          const Divider(height: 32),

          _buildItem(
            icon: Icons.logout,
            title: 'Log out',
            isDestructive: true,
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),

    );
  }
}
