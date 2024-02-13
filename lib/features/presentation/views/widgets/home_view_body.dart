import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/user_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  static const UserInfoModel userInfoItem = UserInfoModel(
    title: 'Lekan Okeowo',
    subtitle: 'demo@gmail.com',
    image: Assets.imagesAvatar1,
  );
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfo(userInfoModel: userInfoItem),
      ],
    );
  }
}
