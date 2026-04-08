/*import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/photo.jpg"),
            ),

            const SizedBox(height: 20),

            const Text(
              "Nelly",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text("nelly@email.com", style: TextStyle(color: Colors.grey)),

            const SizedBox(height: 30),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Profile"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:confetti/confetti.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Avatar
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/photo.jpg"),
              ),
              const SizedBox(height: 20),

              // Name and Email
              const Text(
                "Nelly",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "nelly@email.com",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),

              // Stats Cards
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildStatCard(
                      "Total Tasks",
                      "42",
                      Icons.list,
                      Colors.cyan,
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    _buildStatCard(
                      "Longest Streak",
                      "7 Days",
                      Icons.local_fire_department,
                      Colors.orange,
                      onTap: () {
                        _confettiController.play(); // Trigger confetti
                      },
                    ),
                    const SizedBox(width: 10),
                    _buildStatCard(
                      "Habit Completion",
                      "85%",
                      Icons.check_circle,
                      Colors.green,
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              // Confetti overlay
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

              const SizedBox(height: 30),

              // Options
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Edit Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build stats card
  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color, {
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 5),
            if (title == "Longest Streak")
              const Text(
                "Tap to celebrate!",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }
}*/ 

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:confetti/confetti.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  Widget _buildStatCard(
    String title,
    String value,
    String iconAsset,
    Color color, {
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconAsset, width: 30, color: color),
              const SizedBox(height: 10),
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.darkBlue)),
              const SizedBox(height: 5),
              Text(value,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: color)),
              if (title == "Longest Streak")
                const SizedBox(height: 5),
              if (title == "Longest Streak")
                const Text("Tap to celebrate!",
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/photo.jpg"), // profile photo
              ),
              const SizedBox(height: 20),
              const Text("Nelly",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBlue)),
              const SizedBox(height: 5),
              const Text("nelly@email.com",
                  style: TextStyle(color: AppColors.primaryBlue)),
              const SizedBox(height: 30),

              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildStatCard("Total Tasks", "42", "assets/task_icon.png",
                        AppColors.primaryBlue, onTap: () {}),
                    const SizedBox(width: 10),
                                        _buildStatCard(
                                            "Longest Streak",
                                            "7 Days",
                                            "assets/streak_icon.png",
                                            Colors.orange, onTap: () {
                                          _confettiController.play();
                                        }),
                                        const SizedBox(width: 10),
                                        _buildStatCard(
                                            "Habit Completion",
                                            "85%",
                                            "assets/completion_icon.png",
                                            Colors.green, onTap: () {}),
                                      ],
                                    ),
                                  ),
                    
                                  // Confetti overlay
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
                    
                                  const SizedBox(height: 30),
                    
                                  // Options
                                  ListTile(
                                    leading: const Icon(Icons.edit),
                                    title: const Text("Edit Profile"),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.settings),
                                    title: const Text("Settings"),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.logout),
                                    title: const Text("Logout"),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    }