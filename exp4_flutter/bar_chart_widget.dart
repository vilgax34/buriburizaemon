import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
        barTouchData: BarTouchData(enabled: true),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, _) {
                const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
                return Text(days[value.toInt()]);
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
        ),
        barGroups: [
          for (int i = 0; i < 5; i++)
            BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(toY: (i + 1) * 3.5, color: Colors.blueAccent)
              ],
            ),
        ],
      ),
    );
  }
}
