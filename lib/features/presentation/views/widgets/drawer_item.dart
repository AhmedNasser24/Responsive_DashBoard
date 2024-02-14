import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.active});
  final DrawerItemModel item;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return active
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}


