import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: PieChart(
        
        PieChartData(
          centerSpaceRadius: double.infinity,
          startDegreeOffset: -135,
          pieTouchData: PieTouchData(enabled: true),
          
          sections: [
            PieChartSectionData(
              value: 40,
              showTitle: false,
              radius: 20,
              color: const Color(0xFF208CC8),
            ),
            PieChartSectionData(
              value: 22,
              showTitle: false,
              radius: 20,
              color: const Color(0xFFE2DECD),
            ),
            PieChartSectionData(
              value: 20,
              showTitle: false,
              radius: 20,
              color: const Color(0xFF064061),
            ),
            PieChartSectionData(
              value: 25,
              showTitle: false,
              color: const Color(0xFF4EB7F2),
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
