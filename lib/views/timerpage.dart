import 'dart:async';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int timeLeft = 1500; // 25 minutes
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      timeLeft = 1500;
    });
  }

  String formatTime() {
    int minutes = timeLeft ~/ 60;
    int seconds = timeLeft % 60;
    return "$minutes:${seconds.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Focus Timer")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formatTime(),
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            ElevatedButton(onPressed: startTimer, child: const Text("Start")),

            ElevatedButton(onPressed: resetTimer, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}
