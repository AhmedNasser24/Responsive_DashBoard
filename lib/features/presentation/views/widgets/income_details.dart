import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/income_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/detail_item.dart';

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


