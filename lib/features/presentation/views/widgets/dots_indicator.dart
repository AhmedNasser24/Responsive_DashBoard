
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key, required this.selectedPage, required this.pageController,
  });
  final int selectedPage ;
  final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (index) =>  Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: GestureDetector(
          onTap: (){
            if ( index != selectedPage){
              pageController.jumpToPage(index) ;
            }
          },
          child: CustomDotIndicator(active: index == selectedPage)),
      ),
    ));
  }
}