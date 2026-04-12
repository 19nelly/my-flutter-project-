// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
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

  List<Map<String, dynamic>> habits = [];

  // Replace with the actual logged-in user ID
  int userId = 1;

  // Replace with your server URL
  final String serverUrl =
      "http://10.147.116.185"; // e.g., http://127.0.0.1:8000

  @override
  void initState() {
    super.initState();
    fetchHabits();
  }

  // Fetch habits from backend
  Future<void> fetchHabits() async {
    try {
      final url = Uri.parse("$serverUrl/get_habit.php?user_id=$userId");
      final response = await http.get(url);
      final data = json.decode(response.body);

      if (data["success"] == 1) {
        setState(() {
          habits = List<Map<String, dynamic>>.from(
            data["data"].map((habit) {
              return {
                "id": habit["id"],
                "name": habit["name"],
                "category": habit["category"],
                "done": false, // for now, local only
              };
            }),
          );
        });
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Error fetching habits")));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // Add habit to backend
  void addHabit() async {
    if (habitController.text.isEmpty) return;

    try {
      final url = Uri.parse("$serverUrl/add_habit.php");
      final response = await http.post(
        url,
        body: {
          "user_id": userId.toString(),
          "name": habitController.text,
          "category": selectedCategory,
        },
      );

      final data = json.decode(response.body);

      if (data["success"] == 1) {
        setState(() {
          habits.add({
            "id": data["habit_id"],
            "name": habitController.text,
            "category": selectedCategory,
            "done": false,
          });
        });
        habitController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error adding habit: ${data['error']}")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  // Toggle habit done (local only)
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
            DropdownButtonFormField<String>(
              initialValue: selectedCategory,
              items: categories
                  .map(
                    (category) => DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    ),
                  )
                  .toList(),
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
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: addHabit,
                child: const Text("Add Habit"),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: habits.isEmpty
                  ? const Center(child: Text("No habits yet"))
                  : ListView.builder(
                      itemCount: habits.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Checkbox(
                              value: habits[index]["done"],
                              onChanged: (value) {
                                toggleHabit(index);
                              },
                            ),
                            title: Text(habits[index]["name"]),
                            subtitle: Text(habits[index]["category"]),
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
