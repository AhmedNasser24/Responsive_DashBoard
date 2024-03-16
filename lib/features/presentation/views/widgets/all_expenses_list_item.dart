import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesListItem extends StatefulWidget {
  const AllExpensesListItem({super.key});

  @override
  State<AllExpensesListItem> createState() => _AllExpensesListItemState();
}

class _AllExpensesListItemState extends State<AllExpensesListItem> {
  List<AllExpensesItemModel> items = const [
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
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20.129'),
  ];
  int selectedItem = 0;
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
          // children: items.map((item) => Expanded(child: AllExpensesItem(item: item))).toList(),
          children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return GestureDetector(
            onTap: () {
              if (index != selectedItem) {
                setState(() {
                  selectedItem = index;
                });
              }
              scrollToIndex(index);
            },
            child: AllExpensesItem(item: item, active: selectedItem == index));
      }).toList()),
    );
  }

  void scrollToIndex(int index) {
    double itemWidth = 180;
    double offset = index * itemWidth;
    if (offset > scrollController.position.maxScrollExtent) {
      offset = scrollController.position.maxScrollExtent;
    }
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
