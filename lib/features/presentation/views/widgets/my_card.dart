import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/card_preview.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_dot_indicator.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('My Card', style: AppStyle.semiBold20),
        const Gap(15),
        ExpandablePageView(
          children: List.generate(3, (index) => const CardPreview()),
        ),
        const Gap(18),
        const CustomDotIndicator(active: true,)
      ],
    );
  }
}

