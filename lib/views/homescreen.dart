/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:confetti/confetti.dart';*/
/*class Homescreen extends StatefulWidget {
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
}*/
/*import 'dashboard.dart';
import 'habits.dart';
import 'tasks.dart';
import 'profile.dart';
import 'timerpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const DashboardPage(),
    const HabitsPage(),
    const TasksPage(),
    const TimerPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex], // 👈 THIS SHOWS YOUR PAGES

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.repeat), label: "Habits"),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: "Tasks",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Timer"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}*/

/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

// Import pages
import 'tasks.dart';
import 'habits.dart';
import 'profile.dart';
import 'dashboard.dart';
import 'timerpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  // ✅ MAKE SURE THIS MATCHES NAV ITEMS
  final List<Widget> pages = [
    const DashboardPage(),
    const HabitsPage(),
    const TasksPage(),
    const TimerPage(), // 👈 ADD THIS
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,

      // ✅ THIS SHOWS YOUR ACTUAL CONTENT
      body: pages[currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.backgroundBlue,
        color: AppColors.primaryBlue,
        buttonBackgroundColor: const Color.fromARGB(255, 8, 73, 126),
        index: currentIndex,

        items: const [
          Icon(Icons.dashboard, color: Colors.white),
          Icon(Icons.repeat, color: Colors.white),
          Icon(Icons.check_circle, color: Colors.white),
          Icon(Icons.timer, color: Colors.white), // 👈 ADD TIMER ICON
          Icon(Icons.person, color: Colors.white),
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

// Pages
import 'dashboard.dart';
import 'habits.dart';
import 'stats.dart';
import 'profile.dart';
import 'timerpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const DashboardPage(),
    const HabitsPage(),
    const StatsPage(), // ✅ REPLACES TASKS
    const TimerPage(),
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
        buttonBackgroundColor: const Color.fromARGB(255, 8, 73, 126),
        index: currentIndex,

        items: const [
          Icon(Icons.dashboard, color: Colors.white),
          Icon(Icons.repeat, color: Colors.white),
          Icon(Icons.bar_chart, color: Colors.white), // ✅ STATS
          Icon(Icons.timer, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
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
