import 'package:flutter/material.dart';

import '../features/home/home_app_bar.dart';
import '../features/home/home_body.dart';
import '../features/schedules/schedules_body.dart';
import '../features/notifications/notifications_body.dart';
import '../features/profile/profile_body.dart';
import '../navigation/bottom_nav.dart';
import '../features/profile/profile_app_bar.dart';


class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: switch (_index) {
        0 => HomeAppBar(),
        1 => AppBar(title: const Text('Schedules')),
        2 => AppBar(title: const Text('Notifications')),
        _ => profileAppBar(context),
      },
      body: switch (_index) {
        0 => const HomeBody(),
        1 => const SchedulesBody(),
        2 => const NotificationsBody(),
        _ => const ProfileBody(),
      },
      bottomNavigationBar: AppBottomNav(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}
