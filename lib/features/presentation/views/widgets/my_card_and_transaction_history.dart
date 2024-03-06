import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_divider.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/my_card.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyCard(),
          CustomDivider(),
          TransactionHistory(),
        ],
      ),
    );
  }
}
