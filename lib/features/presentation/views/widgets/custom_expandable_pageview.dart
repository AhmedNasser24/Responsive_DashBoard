import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/card_preview.dart';

class CustomExpandablePageView extends StatelessWidget {
  const CustomExpandablePageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 350),
      controller: pageController,
      children: List.generate(3, (index) => const CardPreview()),
    );
  }
}
