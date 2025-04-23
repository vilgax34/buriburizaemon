import 'package:flutter/material.dart';
import '../widgets/profile_image.dart';
import '../widgets/bar_chart_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ProfileImage(),
            SizedBox(height: 24),
            Text(
              'Weekly Data',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Expanded(child: BarChartWidget()),
          ],
        ),
      ),
    );
  }
}
