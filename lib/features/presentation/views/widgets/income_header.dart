import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Income', style: AppStyle.semiBold20),
        const Spacer(),
        const Text('monthly', style: AppStyle.medium16),
        const Gap(8),
        SizedBox(
          height: 15,
          width: 15,
          child: Transform.rotate(
            angle: 90 * pi / 180,
            child: SvgPicture.asset(Assets.imagesArrowRight),
          ),
        ),
      ],
    );
  }
}
