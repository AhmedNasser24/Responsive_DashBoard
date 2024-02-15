import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/list_of_drawer_item.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/setting_and_logout_drawer_item.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  static const UserInfoModel userInfoItem = UserInfoModel(
    title: 'Lekan Okeowo',
    subtitle: 'demo@gmail.com',
    image: Assets.imagesAvatar1,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfo(userInfoModel: userInfoItem)),
          SliverListOfDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false, // Set to false to prevent double scroll
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: SizedBox()), // Expands to fill available space
                SettingAndLogoutDrawerItem(),
      
                Gap(48),
                // Add more widgets if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}