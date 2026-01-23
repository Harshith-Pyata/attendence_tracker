import 'package:flutter/material.dart';
import 'change_email_screen.dart';
import 'change_password_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String name = "Dileep";
  String phone = "+91 9876543210";
  String email = "dileep@email.com";

  void _editBottomSheet({
    required String title,
    required String initialValue,
    required Function(String) onSave,
  }) {
    final controller = TextEditingController(text: initialValue);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: EdgeInsets.fromLTRB(
          16,
          16,
          16,
          MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            TextField(controller: controller),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  onSave(controller.text);
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// PROFILE PHOTO
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: media.size.width * 0.18,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text("Edit Photo"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// NAME
            _ProfileField(
              label: "Name",
              value: name,
              icon: Icons.person,
              onTap: () {
                _editBottomSheet(
                  title: "Edit Name",
                  initialValue: name,
                  onSave: (v) => setState(() => name = v),
                );
              },
            ),

            /// EMAIL
            _ProfileField(
              label: "Email",
              value: email,
              icon: Icons.email,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ChangeEmailScreen()),
                );
              },
            ),

            /// PHONE
            _ProfileField(
              label: "Phone Number",
              value: phone,
              icon: Icons.phone,
              onTap: () {
                _editBottomSheet(
                  title: "Edit Phone Number",
                  initialValue: phone,
                  onSave: (v) => setState(() => phone = v),
                );
              },
            ),

            /// PASSWORD
            _ProfileField(
              label: "Change Password",
              value: "",
              icon: Icons.lock,
              isPassword: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ChangePasswordScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class _ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final bool isPassword;
  final VoidCallback onTap;

  const _ProfileField({
    required this.label,
    required this.value,
    required this.icon,
    required this.onTap,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 6),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  Icon(icon, color: Colors.grey),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      isPassword ? "••••••••" : value,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
