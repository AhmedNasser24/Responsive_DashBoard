import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses', style: AppStyle.semiBold20),
        Spacer(),
        Text(
          'Monthly',
          style: AppStyle.medium16,
        ),
        Icon(Icons.keyboard_arrow_down)
      ],
    );
  }
}
