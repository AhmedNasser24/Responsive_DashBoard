import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kBackgroundColor,
      height: 40,
      thickness: 3,
    );
  }
}