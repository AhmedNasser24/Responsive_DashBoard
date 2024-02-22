import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kBackgroundColor,
        filled: true,
        hintText: 'Type Customer Name',
        hintStyle: AppStyle.regular16.copyWith(color: kGrayColor),
        border: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none);
  }
}
