import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_expandable_pageview.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/dots_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({
    super.key,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int selectedPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      setState(() {
        selectedPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('My Card', style: AppStyle.semiBold20),
        const Gap(15),
        CustomExpandablePageView(pageController: pageController),
        const Gap(18),
        DotsIndicator(selectedPage: selectedPage , pageController: pageController),
      ],
    );
  }
}
