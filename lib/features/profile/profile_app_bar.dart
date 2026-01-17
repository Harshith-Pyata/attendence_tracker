// import 'package:flutter/material.dart';
//
// PreferredSizeWidget profileAppBar(BuildContext context) {
//   final height = MediaQuery.of(context).size.height * 0.33;
//
//   return PreferredSize(
//     preferredSize: Size.fromHeight(height),
//     child: AppBar(
//       backgroundColor: Colors.blue,
//       elevation: 0,
//       centerTitle: true,
//       automaticallyImplyLeading: false,
//
//       flexibleSpace: Padding(
//         padding: const EdgeInsets.only(top: 50),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             // 👤 Profile Image
//             GestureDetector(
//               onTap: () {
//                 // future: change photo
//               },
//               child: const CircleAvatar(
//                 radius: 45,
//                 child: Icon(Icons.person, size: 50),
//                 // backgroundImage: AssetImage(
//                 //   'assets/images/profile.jpg', // optional
//                 // ),
//               ),
//             ),
//
//             const SizedBox(height: 12),
//
//             // 👤 Name
//             const Text(
//               "Dileep",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white,
//               ),
//             ),
//
//             const SizedBox(height: 12),
//
//             // ✏️ Edit Profile Button
//             OutlinedButton(
//               style: OutlinedButton.styleFrom(
//                 side: const BorderSide(color: Colors.white),
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               onPressed: () {
//                 // navigate to edit profile later
//               },
//               child: const Text("Edit Profile"),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';

PreferredSizeWidget profileAppBar(BuildContext context) {
  final media = MediaQuery.of(context);
  final height = media.size.height * 0.33;

  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      automaticallyImplyLeading: false,

      flexibleSpace: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Profile photo
                GestureDetector(
                  child: const CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
                  ),
                ),

                const SizedBox(height: 10),

                // Name
                const Text(
                  "Chandu Sri Ram Dileep",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                // Edit button
                OutlinedButton(
                  onPressed: () {},
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
    ),
  );
}
