/*import 'dart:async';
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
}*/

//UPDATED VERSION 1
/*import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Timer"), centerTitle: true),
      body: const Center(
        child: Text("Timer Coming Soon ⏳", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  // ignore: use_super_parameters
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int seconds = 0;
  bool isRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Timer'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${seconds}s',
              style: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: seconds > 60 ? Colors.green : Colors.orange,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!isRunning) {
                      startTimer();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: const Text('Start'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    stopTimer();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: const Text('Stop'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    resetTimer();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'Use this timer for focused habit sessions',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  void startTimer() {
    isRunning = true;
    // Simple timer increment every second
    Future.delayed(const Duration(seconds: 1), () {
      if (isRunning) {
        setState(() {
          seconds++;
        });
        startTimer(); // Recursive call for continuous timer
      }
    });
  }

  void stopTimer() {
    isRunning = false;
  }

  void resetTimer() {
    isRunning = false;
    setState(() {
      seconds = 0;
    });
  }
}
