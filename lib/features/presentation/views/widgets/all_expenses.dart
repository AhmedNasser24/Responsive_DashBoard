import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_list_item.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_header.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kWhiteColor,
          padding: const EdgeInsets.all(16),
          child: const Column(
            children: [
              AllExpensesHeader(),
              Gap(22),
              AllExpensesListItem(),
            ],
          ),
        )
      ],
    );
  }
}
