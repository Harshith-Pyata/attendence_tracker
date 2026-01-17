import 'package:flutter/material.dart';
class BoxTwo extends StatelessWidget {
  const BoxTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity, // 🔥 FORCE FULL WIDTH
        child: Card(
        margin: const EdgeInsets.all(12),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Today's Events",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("• Data Structures Class"),
            SizedBox(height: 6),
            Text("• Flutter Workshop"),
            SizedBox(height: 6),
            Text("• NSS Meeting"),
          ],
        ),
      ),
        ),
    );
  }
}
