import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_list_of_user_info.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const Gap(20),
          const Text(
            'Latest Transaction',
            style: AppStyle.medium16,
          ),
          const Gap(10),
          Transform.rotate(
            angle: -90 * pi / 180,
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          const Gap(12),
          const CustomListViewOfUserInfo(),
        ],
      ),
    );
  }
}

