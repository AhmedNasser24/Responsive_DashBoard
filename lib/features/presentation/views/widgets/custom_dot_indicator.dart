
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key, this.active = false,
  });
  final bool active ;
  @override
  Widget build(BuildContext context) {
    
    return AnimatedContainer(
      
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: active ? 32 : 8,
      decoration: ShapeDecoration(
        color: active ? kBlueColor : kGrayColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}