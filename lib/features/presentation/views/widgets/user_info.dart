import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfoModel.image),
      title: Text(userInfoModel.title, style: AppStyle.semiBold16),
      subtitle: Text(userInfoModel.subtitle, style: AppStyle.regular12),
    );
  }
}
