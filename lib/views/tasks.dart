import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/taskcontroller.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TasksController controller = TasksController();

  @override
  void initState() {
    super.initState();
    controller.fetchTasks(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tasks"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.taskController,
              decoration: InputDecoration(
                hintText: "Enter task",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => controller.addTask(() => setState(() {})),
              child: const Text("Add Task"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: controller.tasks.isEmpty
                  ? const Center(child: Text("No tasks yet"))
                  : ListView.builder(
                      itemCount: controller.tasks.length,
                      itemBuilder: (context, index) {
                        final task = controller.tasks[index];
                        return Card(
                          child: ListTile(
                            leading: Checkbox(
                              value: task["done"],
                              onChanged: (val) {
                                controller.toggleTask(index, val ?? false);
                              },
                            ),
                            title: Text(task["name"]),
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
