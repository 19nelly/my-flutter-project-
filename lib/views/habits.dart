/*import 'package:flutter/material.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  // Categories
  final List<String> categories = [
    "Health",
    "Exercise",
    "Study",
    "Work",
    "Mindfulness",
    "Personal",
  ];

  String selectedCategory = "Health";

  TextEditingController habitController = TextEditingController();

  // Store habits
  List<Map<String, String>> habits = [];

  void addHabit() {
    if (habitController.text.isEmpty) return;

    setState(() {
      habits.add({"name": habitController.text, "category": selectedCategory});
    });

    habitController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Habits"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            /// CATEGORY DROPDOWN
            DropdownButtonFormField<String>(
              value: selectedCategory,
              items: categories.map((category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
              decoration: InputDecoration(
                labelText: "Select Category",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// HABIT INPUT
            TextField(
              controller: habitController,
              decoration: InputDecoration(
                hintText: "Enter habit",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 15),

            /// ADD BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: addHabit,
                child: const Text("Add Habit"),
              ),
            ),

            const SizedBox(height: 20),

            /// HABITS LIST
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.check_circle_outline),
                      title: Text(habits[index]["name"]!),
                      subtitle: Text(habits[index]["category"]!),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  // Categories
  final List<String> categories = [
    "Health",
    "Exercise",
    "Study",
    "Work",
    "Mindfulness",
    "Personal",
  ];

  String selectedCategory = "Health";

  TextEditingController habitController = TextEditingController();

  // Store habits with done status
  List<Map<String, dynamic>> habits = [];

  void addHabit() {
    if (habitController.text.isEmpty) return;

    setState(() {
      habits.add({
        "name": habitController.text,
        "category": selectedCategory,
        "done": false, // Toggle state
      });
    });

    habitController.clear();
  }

  void toggleHabit(int index) {
    setState(() {
      habits[index]["done"] = !habits[index]["done"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Habits"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// CATEGORY DROPDOWN
            DropdownButtonFormField<String>(
              value: selectedCategory,
              items: categories.map((category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
              decoration: InputDecoration(
                labelText: "Select Category",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// HABIT INPUT
            TextField(
              controller: habitController,
              decoration: InputDecoration(
                hintText: "Enter habit",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 15),

            /// ADD BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: addHabit,
                child: const Text("Add Habit"),
              ),
            ),

            const SizedBox(height: 20),

            /// HABITS LIST WITH TOGGLE
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  final habit = habits[index];
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: habit["done"],
                        onChanged: (value) => toggleHabit(index),
                      ),
                      title: Text(
                        habit["name"],
                        style: TextStyle(
                          decoration: habit["done"]
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      subtitle: Text(habit["category"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
