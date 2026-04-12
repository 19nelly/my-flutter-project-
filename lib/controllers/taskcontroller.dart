// ignore_for_file: avoid_print

/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TasksController {
  final TextEditingController taskController = TextEditingController();
  final List<Map<String, dynamic>> tasks = [];

  int userId = 1; // logged-in user ID
  final String serverUrl = "http://10.147.116.185/habit_api";

  // Fetch tasks from backend
  Future<void> fetchTasks(VoidCallback refreshUI) async {
    try {
      final url = Uri.parse("$serverUrl/get_task.php?user_id=$userId");
      final response = await http.get(url);
      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks.clear();
        tasks.addAll(
          List<Map<String, dynamic>>.from(
            data["data"].map(
              (task) => {
                "id": task["id"],
                "name": task["name"],
                "done": task["completed"] == "1", // backend completed
                "habit_id": task["habit_id"],
              },
            ),
          ),
        );
        refreshUI();
      }
    } catch (e) {
      // ignore: avoid_print
      print("Error fetching tasks: $e");
    }
  }

  // Add task to backend
  Future<void> addTask(VoidCallback refreshUI, {int? habitId}) async {
    if (taskController.text.isEmpty) return;

    try {
      final url = Uri.parse("$serverUrl/add_task.php");
      final response = await http.post(
        url,
        body: {
          "user_id": userId.toString(),
          "habit_id": habitId?.toString() ?? "",
          "name": taskController.text,
        },
      );

      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks.add({
          "id": data["task_id"],
          "name": taskController.text,
          "done": false,
          "habit_id": habitId,
        });
        taskController.clear();
        refreshUI();
      }
    } catch (e) {
      // ignore: avoid_print
      print("Error adding task: $e");
    }
  }

  // Toggle task locally (can later update backend)
  void toggleTask(int index, VoidCallback refreshUI) {
    tasks[index]["done"] = !tasks[index]["done"];
    refreshUI();
    // Later: call update_task.php to persist completion
  }
}*/

//Updated
/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TasksController {
  final TextEditingController taskController = TextEditingController();

  List<Map<String, dynamic>> tasks = [];

  int userId = 1;

  final String serverUrl = "http://10.147.116.185/habit_api";
  
  Future<void> fetchTasks(VoidCallback refreshUI) async {
    try {
      final url = Uri.parse("$serverUrl/get_tasks.php?user_id=$userId");
      final response = await http.get(url);
      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks = List<Map<String, dynamic>>.from(data["data"]);
        refreshUI();
      }
    } catch (e) {
      print("Error fetching tasks: $e");
    }
  }

  Future<void> addTask(VoidCallback refreshUI) async {
    if (taskController.text.isEmpty) return;

    try {
      final url = Uri.parse("$serverUrl/add_task.php");

      final response = await http.post(
        url,
        body: {"user_id": userId.toString(), "name": taskController.text},
      );

      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks.add({
          "id": data["task_id"],
          "name": taskController.text,
          "done": false,
        });

        taskController.clear();
        refreshUI();
      }
    } catch (e) {
      print("Error adding task: $e");
    }
  }

  void toggleTask(int index, VoidCallback refreshUI) {
    tasks[index]["done"] = !tasks[index]["done"];
    refreshUI();
  }
}*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TasksController {
  final String serverUrl = "http://10.147.116.185/habit_api";

  final TextEditingController taskController = TextEditingController();

  List<Map<String, dynamic>> tasks = [];

  int userId = 1;

  // 📥 FETCH TASKS FROM DATABASE
  Future<void> fetchTasks(VoidCallback refreshUI) async {
    try {
      final url = Uri.parse("$serverUrl/get_tasks.php?user_id=$userId");

      final response = await http.get(url);
      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks = List<Map<String, dynamic>>.from(data["data"]);

        refreshUI();
      } else {
        print("Failed to fetch tasks");
      }
    } catch (e) {
      print("Fetch tasks error: $e");
    }
  }

  // ➕ ADD TASK TO DATABASE
  Future<void> addTask(VoidCallback refreshUI) async {
    if (taskController.text.isEmpty) return;

    try {
      final url = Uri.parse("$serverUrl/add_task.php");

      final response = await http.post(
        url,
        body: {"user_id": userId.toString(), "name": taskController.text},
      );

      final data = json.decode(response.body);

      if (data["success"] == 1) {
        tasks.add({
          "id": data["task_id"] ?? 0,
          "name": taskController.text,
          "completed": 0,
        });

        taskController.clear();
        refreshUI();
      } else {
        print("Failed to add task");
      }
    } catch (e) {
      print("Add task error: $e");
    }
  }

  // 🔁 TOGGLE TASK (REAL DATABASE UPDATE)
  Future<void> toggleTask(int taskId, bool value) async {
    try {
      final url = Uri.parse("$serverUrl/update_task.php");

      await http.post(
        url,
        body: {"task_id": taskId.toString(), "completed": value ? "1" : "0"},
      );

      // update local list too
      for (var task in tasks) {
        if (task["id"] == taskId) {
          task["completed"] = value ? 1 : 0;
        }
      }
    } catch (e) {
      print("Toggle task error: $e");
    }
  }

  // 🧹 CLEAR CONTROLLER
  void dispose() {
    taskController.dispose();
  }
}
