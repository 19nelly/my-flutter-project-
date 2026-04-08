/*import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Weekly Completion', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10),
                    LinearProgressIndicator(value: 0.75),
                    Text('75% habits completed'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Most Consistent Habit',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text('Meditation - 7 days streak'),
                  ],
                ),
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

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        title: const Text('Statistics'),
        backgroundColor: AppColors.primaryBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text('Weekly Completion', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.75,
                      color: AppColors.primaryBlue,
                    ),
                    SizedBox(height: 5),
                    Text('75% habits completed'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Text(
                      'Most Consistent Habit',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text('Meditation - 7 days streak'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
