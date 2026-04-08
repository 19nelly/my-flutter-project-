/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/habits.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Welcome Back 👋",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.list),
                title: const Text("Today's Tasks"),
                subtitle: const Text("View and manage your tasks"),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.repeat),
                title: const Text("Daily Habits"),
                subtitle: const Text("Track your habits"),
                onTap: () {
                  // Navigate to Habits Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HabitsPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                subtitle: const Text("View your account"),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Stay productive today 💪",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/habits.dart';
import '../configs/colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: AppColors.primaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back 👋",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBlue,
              ),
            ),
            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: Image.asset("assets/task_icon.png", width: 30),
                title: const Text("Today's Tasks"),
                subtitle: const Text("View and manage your tasks"),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Image.asset("assets/habit_icon.png", width: 30),
                title: const Text("Daily Habits"),
                subtitle: const Text("Track your habits"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HabitsPage()),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: Image.asset("assets/profile_icon.png", width: 30),
                title: const Text("Profile"),
                subtitle: const Text("View your account"),
              ),
            ),

            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Stay productive today 💪",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart'; // For simple confetti animation
import 'dart:math';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int streak = 5; // Example streak value
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
    // Play confetti if streak is a multiple of 5
    if (streak % 5 == 0) {
      _confettiController.play();
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            const Text(
              "Welcome Back 👋",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Streak Message
            Row(
              children: [
                const Icon(Icons.local_fire_department, color: Colors.orange),
                const SizedBox(width: 5),
                Text(
                  "You're on a $streak-day streak! 🔥",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Animated Confetti
            SizedBox(
              height: 50,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                colors: const [
                  Colors.cyan,
                  Colors.orange,
                  Colors.pink,
                  Colors.green,
                ],
                numberOfParticles: 20,
                maxBlastForce: 10,
                minBlastForce: 5,
                emissionFrequency: 0.05,
              ),
            ),

            // Cards
            Card(
              child: ListTile(
                leading: const Icon(Icons.list),
                title: const Text("Today's Tasks"),
                subtitle: const Text("View and manage your tasks"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: const Icon(Icons.repeat),
                title: const Text("Daily Habits"),
                subtitle: const Text("Track your habits"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                subtitle: const Text("View your account"),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Stay productive today 💪",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
    // Play confetti on page load (optional)
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), centerTitle: true),
      body: Stack(
        children: [
          // Main content
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Welcome Text
              const Text(
                "Welcome Back 👋",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Cards
              Card(
                child: ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text("Today's Tasks"),
                  subtitle: const Text("View and manage your tasks"),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.repeat),
                  title: const Text("Daily Habits"),
                  subtitle: const Text("Track your habits"),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  subtitle: const Text("View your account"),
                ),
              ),
              const SizedBox(height: 20),

              // Motivational Text
              const Center(
                child: Text(
                  "Stay productive today 💪",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 40), // extra bottom space
            ],
          ),

          // Confetti Overlay
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [
                Colors.cyan,
                Colors.orange,
                Colors.pink,
                Colors.green,
              ],
              numberOfParticles: 20,
              maxBlastForce: 10,
              minBlastForce: 5,
              emissionFrequency: 0.05,
            ),
          ),
        ],
      ),
    );
  }
}*/
