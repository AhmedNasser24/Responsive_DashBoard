import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
  });
  final String image;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                imageColor?.withOpacity(0.1) ?? kBlackColor.withOpacity(0.03),
          ),
          child: imageColor == null
              ? SvgPicture.asset(image)
              : SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(imageColor!, BlendMode.srcIn),
                ),
        ),
        const Spacer(),
        imageColor == null
            ? SvgPicture.asset(Assets.imagesArrowRight)
            : SvgPicture.asset(
                Assets.imagesArrowRight,
                colorFilter: ColorFilter.mode(imageColor!, BlendMode.srcIn),
              )
      ],
    );
  }
}
