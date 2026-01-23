import 'package:flutter/material.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Change Email")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "New Email",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // API + verification
              },
              child: const Text("Verify & Update"),
            ),
          ],
        ),
      ),
    );
  }
}
