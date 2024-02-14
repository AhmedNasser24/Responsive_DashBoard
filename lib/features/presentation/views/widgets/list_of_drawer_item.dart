import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/drawer_item.dart';

class SliverListOfDrawerItems extends StatefulWidget {
  const SliverListOfDrawerItems({super.key});

  @override
  State<SliverListOfDrawerItems> createState() => _SliverListOfDrawerItemsState();
}

class _SliverListOfDrawerItemsState extends State<SliverListOfDrawerItems> {
  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: () {
            if (index != selectedItem) {
              setState(() {
                selectedItem = index;
              });
            }
          },
          child: DrawerItem(item: items[index], active: index == selectedItem),
        ),
      ),
    );
  }
}
