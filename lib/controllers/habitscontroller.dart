import 'package:flutter/material.dart';

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

  // Store habits with done status
  final List<Map<String, dynamic>> habits = [];

  void addHabit(VoidCallback refreshUI) {
    if (habitController.text.isEmpty) return;

    habits.add({
      "name": habitController.text,
      "category": selectedCategory,
      "done": false,
    });

    habitController.clear();
    refreshUI(); // triggers setState in the view
  }

  void toggleHabit(int index, VoidCallback refreshUI) {
    habits[index]["done"] = !habits[index]["done"];
    refreshUI();
  }

  void changeCategory(String category, VoidCallback refreshUI) {
    selectedCategory = category;
    refreshUI();
  }
}
