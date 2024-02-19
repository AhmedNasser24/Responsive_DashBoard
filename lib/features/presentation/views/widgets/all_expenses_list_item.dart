import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesListItem extends StatelessWidget {
  const AllExpensesListItem({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        icon: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items.map((item) => Expanded(child: AllExpensesItem(item: item))).toList(),
      children: items.asMap().entries.map((e) {
      int key = e.key;
      var item = e.value;
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: key == 1 ? 12.0 : 0),
          child: AllExpensesItem(item: item),
        ),
      );
    }).toList());
  }
}
