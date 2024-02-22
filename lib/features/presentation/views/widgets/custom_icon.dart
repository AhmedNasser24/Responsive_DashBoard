
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle ,
        color:  kBackgroundColor
      ),
      child: const Center(child: Icon(Icons.add)),
    );
  }
}