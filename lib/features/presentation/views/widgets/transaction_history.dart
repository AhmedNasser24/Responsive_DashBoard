import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/transaction_history_hearder.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/transaction_item_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const Gap(10),
        Text('13 April 2022',
            style: AppStyle.medium16.copyWith(color: kGrayColor)),
        const TransactionItemList()
      ],
    );
  }
}
