import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/Income_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_dot.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDot(color: incomeModel.color),
      ],
    );
  }
}
