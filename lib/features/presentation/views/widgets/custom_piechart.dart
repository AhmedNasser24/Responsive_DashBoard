import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/Income_model.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key , required this.incomeModel});
  final List < IncomeModel > incomeModel ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: PieChart(
        
        PieChartData(
          centerSpaceRadius: double.infinity,
          startDegreeOffset: -135,
          pieTouchData: PieTouchData(enabled: true),
          
          sections: incomeModel.map((e) => PieChartSectionData(
              value: e.percent.toDouble() ,
              showTitle: false,
              radius: 20,
              color: e.color,
            ),).toList() 
        ),
      ),
    );
  }
}
