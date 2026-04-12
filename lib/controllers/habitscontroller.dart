import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HabitController {
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
  final TextEditingController habitController = TextEditingController();

  // Store habits fetched from backend
  final List<Map<String, dynamic>> habits = [];

  // Replace with logged-in user ID
  int userId = 1;

  // Replace with your backend server URL
  final String serverUrl =
      "http://10.147.116.185"; // e.g., http://127.0.0.1:8000

  // Fetch habits from backend
  Future<void> fetchHabits(VoidCallback refreshUI) async {
    try {
      final url = Uri.parse("$serverUrl/get_habit.php?user_id=$userId");
      final response = await http.get(url);
      final data = json.decode(response.body);

      if (data["success"] == 1) {
        habits.clear();
        habits.addAll(
          List<Map<String, dynamic>>.from(
            data["data"].map((habit) {
              return {
                "id": habit["id"],
                "name": habit["name"],
                "category": habit["category"],
                "done": false, // for now local only
              };
            }),
          ),
        );
        refreshUI();
      } else {
        print("Error fetching habits: ${data['error']}");
      }
    } catch (e) {
      print("Error fetching habits: $e");
    }
  }

  // Add habit to backend
  Future<void> addHabit(VoidCallback refreshUI) async {
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
        habits.add({
          "id": data["habit_id"],
          "name": habitController.text,
          "category": selectedCategory,
          "done": false,
        });
        habitController.clear();
        refreshUI();
      } else {
        print("Error adding habit: ${data['error']}");
      }
    } catch (e) {
      print("Error adding habit: $e");
    }
  }

  // Toggle habit done (local only for now)
  void toggleHabit(int index, VoidCallback refreshUI) {
    habits[index]["done"] = !habits[index]["done"];
    refreshUI();
    // Later, you can call update_task.php to persist completion
  }

  // Change selected category
  void changeCategory(String category, VoidCallback refreshUI) {
    selectedCategory = category;
    refreshUI();
  }
}
