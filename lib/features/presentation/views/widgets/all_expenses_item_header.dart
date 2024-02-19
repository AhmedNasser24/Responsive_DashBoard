import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key, required this.image,
  });
  final String image ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kBlackColor.withOpacity(0.03),
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        SvgPicture.asset(Assets.imagesArrowRight)
      ],
    );
  }
}
