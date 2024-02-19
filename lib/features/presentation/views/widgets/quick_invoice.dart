import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/user_info.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const QuickInvoiceHeader(),
          const Gap(20),
          const Text(
            'Latest Transaction',
            style: AppStyle.medium16,
          ),
          const Gap(10),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.rotate(
              angle: -90 * pi / 180,
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
          const Gap(12),
          const CustomListViewOfUserInfo(),
        ],
      ),
    );
  }
}

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
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) =>
            UserInfo(userInfoModel: userInfoItems[index % 2]),
      ),
    );
  }
}

