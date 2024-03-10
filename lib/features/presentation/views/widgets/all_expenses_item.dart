import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_item_decoration.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.item,
    required this.active,
  });
  final AllExpensesItemModel item;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return AllExpensesItemDecoration(
      color: active ? kBlueColor : kWhiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              image: item.icon, imageColor: active ? kWhiteColor : null),
          const Gap(35),
          Text(item.title,
              style: active
                  ? AppStyle.semiBold16.copyWith(color: kWhiteColor)
                  : AppStyle.semiBold16),
          const Gap(15),
          Text(item.date,
              style: active
                  ? AppStyle.regular14.copyWith(color: const Color(0xfffafafa))
                  : AppStyle.regular14),
          const Gap(15),
          Text(item.price,
              style: active
                  ? AppStyle.semiBold24.copyWith(color: kWhiteColor)
                  : AppStyle.semiBold24),
        ],
      ),
    );
  }
}


