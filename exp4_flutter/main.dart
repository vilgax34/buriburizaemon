import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image, Icon & Chart")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Icon(Icons.favorite, color: Colors.red, size: 60),

            SizedBox(height: 20),
          Image.asset('assets/myPhoto.jpg', height: 150),

            SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 1.3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: BarChart(
                  BarChartData(
                    barGroups: [
                      BarChartGroupData(x: 0, barRods: [
                        BarChartRodData(toY: 8, color: Colors.blue),
                      ]),
                      BarChartGroupData(x: 1, barRods: [
                        BarChartRodData(toY: 10, color: Colors.orange),
                      ]),
                      BarChartGroupData(x: 2, barRods: [
                        BarChartRodData(toY: 14, color: Colors.green),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}