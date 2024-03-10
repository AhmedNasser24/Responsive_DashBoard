import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/income_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_dot.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.incomeModel,
  });

  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CustomDot(color: incomeModel.color),
      minLeadingWidth: 10,
      title: Text(
        incomeModel.title,
        style: AppStyle.medium16,
      ),
      trailing: Text(
        '${incomeModel.percent}%',
        style: AppStyle.medium16.copyWith(color: kBlueColor),
      ),
    );
  }
}
