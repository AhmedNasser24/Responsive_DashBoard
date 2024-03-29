import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/data/models/income_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_piechart.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/income_details.dart';

class IncomeContent extends StatelessWidget {
  const IncomeContent({super.key});
  static const List<IncomeModel> incomeModel = [
    IncomeModel(title: 'Design service', percent: 40, color: Color(0xFF208CC8)),
    IncomeModel(title: 'Design product', percent: 25, color: Color(0xFF4EB7F2)),
    IncomeModel(
        title: 'Product royalti', percent: 20, color: Color(0xFF064061)),
    IncomeModel(title: 'Other', percent: 22, color: Color(0xFFE2DECD)),

  ];
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomPieChart(incomeModel: incomeModel),
        Gap(20),
        Expanded(child: IncomeDetails(incomeModel: incomeModel)),
      ],
    );
  }
}
