import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/user_info.dart';

class CustomListViewOfUserInfo extends StatelessWidget {
  const CustomListViewOfUserInfo({
    super.key,
  });

  static const List<UserInfoModel> userInfoItems = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoItems
            .map((e) => IntrinsicWidth(child: UserInfo(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 70,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 8,
    //     itemBuilder: (context, index) =>
    //         IntrinsicWidth(child: UserInfo(userInfoModel: userInfoItems[index % 2])),
    //   ),
    // );
  }
}
