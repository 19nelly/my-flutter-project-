/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 15, 5, 147),
        color: primaryColor,

        buttonBackgroundColor: secondaryColor,
        items: <Widget>[
          Icon(Icons.dashboard, size: 30, color: Colors.black),
          Icon(Icons.category, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          // Handle button tap
        },
      ),
      body: Container(), // Add your main content here
    );
  }
}*/

/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

// import your pages
import 'tasks.dart';
import 'habits.dart';
import 'profile.dart';
import 'dashboard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  // pages to display
  final List<Widget> pages = [
    const DashboardPage(),
    const HabitsPage(),
    const TasksPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 15, 5, 147),
        color: primaryColor,
        buttonBackgroundColor: secondaryColor,
        items: const [
          Icon(Icons.dashboard, size: 30, color: Colors.black),
          Icon(Icons.repeat, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.person, size: 30),
        ],
        index: currentIndex,

        items: const [
          Icon(Icons.dashboard, size: 30, color: Colors.black),
          Icon(Icons.repeat, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.person, size: 30),
        ],

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}*/

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

// Import your pages
import 'tasks.dart';
import 'habits.dart';
import 'profile.dart';
import 'dashboard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  // Pages to display
  final List<Widget> pages = [
    const DashboardPage(),
    const HabitsPage(),
    const TasksPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.backgroundBlue,
        color: AppColors.primaryBlue,
        buttonBackgroundColor: AppColors.lightBlue,
        index: currentIndex,
        items: [
          Image.asset(
            "assets/dashboard_icon.png",
            width: 30,
            color: Colors.white,
          ),
          Image.asset("assets/habit_icon.png", width: 30, color: Colors.white),
          Image.asset("assets/task_icon.png", width: 30, color: Colors.white),
          Image.asset(
            "assets/profile_icon.png",
            width: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
