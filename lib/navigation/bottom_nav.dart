import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return
      BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: 'Schedules',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
    //   BottomNavigationBar(
    //     currentIndex: currentIndex,
    //     onTap: onTap,
    //
    //     type: BottomNavigationBarType.fixed,
    //
    //     backgroundColor: Colors.white,
    //
    //     selectedItemColor: Colors.blue,
    //     unselectedItemColor: Colors.grey,
    //
    //     showSelectedLabels: false,
    //     showUnselectedLabels: false,
    //
    //     items: const [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home_outlined),
    //         activeIcon: Icon(Icons.home),
    //         label: 'Home',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.schedule_outlined),
    //         activeIcon: Icon(Icons.schedule),
    //         label: 'Schedules',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.notifications_outlined),
    //         activeIcon: Icon(Icons.notifications),
    //         label: 'Notifications',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person_outline),
    //         activeIcon: Icon(Icons.person),
    //         label: 'Profile',
    //       ),
    //     ],
    //   );

  }
}
