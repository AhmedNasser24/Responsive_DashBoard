import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/my_card_and_transaction_history.dart';

class TrailingContent extends StatelessWidget {
  const TrailingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyCardAndTransactionHistory(),
      ],
    );
  }
}
