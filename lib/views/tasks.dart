/*import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController taskController = TextEditingController();

  List<Map<String, dynamic>> tasks = [];

  void addTask() {
    if (taskController.text.isEmpty) return;

    setState(() {
      tasks.add({"title": taskController.text, "done": false});
    });

    taskController.clear();
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index]["done"] = !tasks[index]["done"];
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                hintText: "Enter new task",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTask,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: tasks[index]["done"],
                        onChanged: (value) {
                          toggleTask(index);
                        },
                      ),

                      title: Text(
                        tasks[index]["title"],
                        style: TextStyle(
                          decoration: tasks[index]["done"]
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),

                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          deleteTask(index);
                        },
                      ),
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
import '../configs/colors.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController taskController = TextEditingController();
  List<Map<String, dynamic>> tasks = [];

  void addTask() {
    if (taskController.text.isEmpty) return;
    setState(() => tasks.add({"title": taskController.text, "done": false}));
    taskController.clear();
  }

  void toggleTask(int index) {
    setState(() => tasks[index]["done"] = !tasks[index]["done"]);
  }

  void deleteTask(int index) {
    setState(() => tasks.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        title: const Text("My Tasks"),
        backgroundColor: AppColors.primaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                hintText: "Enter new task",
                prefixIcon: Image.asset("assets/task_icon.png", width: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add, color: AppColors.primaryBlue),
                  onPressed: addTask,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: tasks.isEmpty
                  ? const Center(
                      child: Text(
                        "No tasks yet. Add one!",
                        style: TextStyle(color: AppColors.darkBlue),
                      ),
                    )
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Checkbox(
                              activeColor: AppColors.primaryBlue,
                              value: tasks[index]["done"],
                              onChanged: (value) => toggleTask(index),
                            ),
                            title: Text(
                              tasks[index]["title"],
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                decoration: tasks[index]["done"]
                                    ? TextDecoration.lineThrough
                                    : null,
                              ),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              ),
                              onPressed: () => deleteTask(index),
                            ),
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
