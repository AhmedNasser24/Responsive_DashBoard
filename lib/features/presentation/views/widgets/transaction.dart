import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: AddMoreDetailsButton()),
        Gap(12),
        Expanded(child: SendMoneyButton())
      ],
    );
  }
}

class SendMoneyButton extends StatelessWidget {
  const SendMoneyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kBlueColor,
        ),
        child: Center(
          child: Text(
            'Send Money',
            style: AppStyle.semiBold16.copyWith(color: kWhiteColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class AddMoreDetailsButton extends StatelessWidget {
  const AddMoreDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: Text(
            'Add more details',
            style: AppStyle.semiBold16.copyWith(color: kBlueColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
