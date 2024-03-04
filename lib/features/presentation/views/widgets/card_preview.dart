import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CardPreview extends StatelessWidget {
  const CardPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: kBlueColor,
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name Card',
                style: AppStyle.regular16.copyWith(color: Colors.white),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Syah Bandi',
                  style: AppStyle.medium20,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.semiBold20.copyWith(color: Colors.white),
                  ),
                  const Gap(7),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.regular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
