/*import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

            /// TASKS
            Card(
              child: ListTile(
                leading: const Icon(Icons.list),
                title: const Text("Today's Tasks"),
                subtitle: const Text("View and manage your tasks"),
                onTap: () {
                  Get.toNamed("/tasks");
                },
              ),
            ),

            const SizedBox(height: 10),

            /// HABITS
            Card(
              child: ListTile(
                leading: const Icon(Icons.repeat),
                title: const Text("Daily Habits"),
                subtitle: const Text("Track your habits"),
                onTap: () {
                  Get.toNamed("/habits");
                },
              ),
            ),

            const SizedBox(height: 10),

            /// PROFILE
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                subtitle: const Text("View your account"),
                onTap: () {
                  Get.toNamed("/profile");
                },
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
import 'package:get/get.dart';

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

            /// HABITS
            Card(
              child: ListTile(
                leading: const Icon(Icons.repeat),
                title: const Text("Daily Habits"),
                subtitle: const Text("Track your habits"),
                onTap: () {
                  Get.toNamed("/habits");
                },
              ),
            ),

            const SizedBox(height: 10),

            /// STATS (NEW REPLACEMENT FOR TASKS)
            Card(
              child: ListTile(
                leading: const Icon(Icons.bar_chart),
                title: const Text("Statistics"),
                subtitle: const Text("View your progress & streaks"),
                onTap: () {
                  Get.toNamed("/stats");
                },
              ),
            ),

            const SizedBox(height: 10),

            /// PROFILE
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                subtitle: const Text("View your account"),
                onTap: () {
                  Get.toNamed("/profile");
                },
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
