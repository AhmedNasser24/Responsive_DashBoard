import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/Income_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_dot.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.incomeModel});
  final List<IncomeModel> incomeModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: incomeModel
          .map(
            (e) => DetailItem(incomeModel: e),
          )
          .toList(),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.incomeModel,
  });

  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDot(color: incomeModel.color),
        const Gap(10),
        Text(
          incomeModel.title,
          style: AppStyle.medium16,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Text(
          '${incomeModel.percent}%',
          style: AppStyle.medium16.copyWith(color: kBlueColor),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
