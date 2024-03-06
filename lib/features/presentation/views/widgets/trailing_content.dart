import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/income_section.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/my_card_and_transaction_history.dart';

class TrailingContent extends StatelessWidget {
  const TrailingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCardAndTransactionHistory(),
          Gap(32),
          IncomeSection(),
        ],
      ),
    );
  }
}

