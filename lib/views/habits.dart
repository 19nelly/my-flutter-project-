import 'package:flutter/material.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  List<Map<String, dynamic>> habits = [
    {"name": "Drink Water", "done": false},
    {"name": "Exercise", "done": false},
    {"name": "Read Book", "done": false},
  ];

  void toggleHabit(int index) {
    setState(() {
      habits[index]["done"] = !habits[index]["done"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daily Habits"), centerTitle: true),

      body: ListView.builder(
        itemCount: habits.length,

        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              title: Text(habits[index]["name"]),

              trailing: Switch(
                value: habits[index]["done"],
                onChanged: (value) {
                  toggleHabit(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
