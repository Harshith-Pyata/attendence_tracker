import 'package:flutter/material.dart';
class BoxOne extends StatelessWidget {
  const BoxOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity, // 🔥 FORCE FULL WIDTH
        child:Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Attendance Status",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text("Present: 18 days"),
            const SizedBox(height: 8),
            const Text("Absent: 2 days"),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "View more",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
        ),
    );
  }
}
