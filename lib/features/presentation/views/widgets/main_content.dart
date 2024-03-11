import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/quick_invoice.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AllExpensesSection(),
        Gap(32),
        QuickInvoice(),
      ],
    );
  }
}
