import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/active_and_inactive_drawer_item.dart';

class SettingAndLogoutDrawerItem extends StatelessWidget {
  const SettingAndLogoutDrawerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: InActiveDrawerItem(
            item: DrawerItemModel(
                image: Assets.imagesSetting, title: 'Setting system'),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: InActiveDrawerItem(
            item: DrawerItemModel(
                image: Assets.imagesLogout, title: 'Logout account'),
          ),
        ),
      ],
    );
  }
}
