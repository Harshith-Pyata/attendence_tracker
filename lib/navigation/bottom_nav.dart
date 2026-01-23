// class AppBottomNav extends StatelessWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;
//
//   const AppBottomNav({
//     super.key,
//     required this.currentIndex,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       BottomNavigationBar(
//       currentIndex: currentIndex,
//       onTap: onTap,
//       type: BottomNavigationBarType.fixed,
//
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.schedule),
//           label: 'Schedules',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label: 'Notifications',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//       ],
//     );
//     //   BottomNavigationBar(
//     //     currentIndex: currentIndex,
//     //     onTap: onTap,
//     //
//     //     type: BottomNavigationBarType.fixed,
//     //
//     //     backgroundColor: Colors.white,
//     //
//     //     selectedItemColor: Colors.blue,
//     //     unselectedItemColor: Colors.grey,
//     //
//     //     showSelectedLabels: false,
//     //     showUnselectedLabels: false,
//     //
//     //     items: const [
//     //       BottomNavigationBarItem(
//     //         icon: Icon(Icons.home_outlined),
//     //         activeIcon: Icon(Icons.home),
//     //         label: 'Home',
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: Icon(Icons.schedule_outlined),
//     //         activeIcon: Icon(Icons.schedule),
//     //         label: 'Schedules',
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: Icon(Icons.notifications_outlined),
//     //         activeIcon: Icon(Icons.notifications),
//     //         label: 'Notifications',
//     //       ),
//     //       BottomNavigationBarItem(
//     //         icon: Icon(Icons.person_outline),
//     //         activeIcon: Icon(Icons.person),
//     //         label: 'Profile',
//     //       ),
//     //     ],
//     //   );
//
//   }
// }
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/schedule_screen.dart';
import '../screens/notifications_screen.dart';
import '../screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  late final List<Widget> _screens =  [
    HomeScreen(
      onProfileTap: (){
        setState((){
          _currentIndex=3;
        });
      },
    ),
    const ScheduleScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
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
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
