// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  int userId = 1;
  final String serverUrl = "http://192.168.100.114/habit_api";

  List<double> weeklyData = [0, 0, 0, 0, 0, 0, 0];
  int completion = 0;
  int streak = 0;

  List<String> eventDates = [];

  @override
  void initState() {
    super.initState();
    fetchStats();
    fetchEvents();
  }

  // 📊 FETCH STATS (tasks/habits + completion + streak)
  Future<void> fetchStats() async {
    try {
      final res = await http.get(
        Uri.parse("$serverUrl/get_stats.php?user_id=$userId"),
      );

      final data = json.decode(res.body);

      if (data["success"] == 1) {
        List temp = data["weekly"] ?? [];

        List<double> newData = List.filled(7, 0);

        for (int i = 0; i < temp.length && i < 7; i++) {
          newData[i] = double.tryParse(temp[i]["total"].toString()) ?? 0;
        }

        setState(() {
          weeklyData = newData.reversed.toList();
          completion = data["completion"] ?? 0;
          streak = data["streak"] ?? 0;
        });
      }
    } catch (e) {
      print("Stats error: $e");
    }
  }

  // 📅 FETCH EVENTS (for calendar dots)
  Future<void> fetchEvents() async {
    try {
      final res = await http.get(
        Uri.parse("$serverUrl/get_events.php?user_id=$userId"),
      );

      final data = json.decode(res.body);

      if (data["success"] == 1) {
        setState(() {
          eventDates = List<String>.from(
            data["data"].map((e) => e["event_date"]),
          );
        });
      }
    } catch (e) {
      print("Events error: $e");
    }
  }

  // 📅 CALENDAR TAP (optional expansion later)
  void onDateTap(String date) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Selected date: $date")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Statistics 📊"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔥 STREAK + COMPLETION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "🔥 Streak: $streak days",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "✅ $completion%",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // 📊 WEEKLY GRAPH
              const Text(
                "Weekly Activity",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 220,
                child: BarChart(
                  BarChartData(
                    borderData: FlBorderData(show: false),
                    gridData: const FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            const days = ["M", "T", "W", "T", "F", "S", "S"];
                            return Text(days[value.toInt()]);
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    barGroups: List.generate(7, (i) {
                      return BarChartGroupData(
                        x: i,
                        barRods: [
                          BarChartRodData(
                            toY: weeklyData[i],
                            width: 14,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // 📅 CALENDAR (SIMPLE DOT STYLE)
              const Text(
                "Activity Calendar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: List.generate(30, (index) {
                  String date =
                      "2026-04-${(index + 1).toString().padLeft(2, '0')}";

                  bool hasEvent = eventDates.contains(date);
                  bool hasActivity = index % 3 == 0;

                  return GestureDetector(
                    onTap: () => onDateTap(date),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: hasEvent
                            ? Colors.blue
                            : hasActivity
                            ? Colors.green
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

              const Text(
                "🟢 Green = Activity  |  🔵 Blue = Event",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
