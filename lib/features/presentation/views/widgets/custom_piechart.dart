import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/income_model.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key, required this.incomeModel});
  final List<IncomeModel> incomeModel;

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int selectedSection = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: PieChart(
        swapAnimationCurve: Curves.bounceInOut,
        swapAnimationDuration: const Duration(milliseconds: 300),
        PieChartData(
            centerSpaceRadius: double.infinity,
            startDegreeOffset: -135,
            pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (event, touchResponse) {
                if (selectedSection !=
                    (touchResponse?.touchedSection?.touchedSectionIndex ??
                        -1)) {
                  
                  setState(() {
                    selectedSection =
                        touchResponse?.touchedSection?.touchedSectionIndex ??
                            -1;
                  });
                }
              },
            ),
            sections: widget.incomeModel
                .asMap()
                .entries
                .map(
                  (e) => PieChartSectionData(
                    
                    value: e.value.percent.toDouble(),
                    showTitle: false,
                    radius: e.key == selectedSection ? 18 : 15,
                    color: e.value.color,
                  ),
                )
                .toList()),
      ),
    );
  }
}
