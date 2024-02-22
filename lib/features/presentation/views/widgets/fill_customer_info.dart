import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_text_field.dart';

class FillCustomerInfo extends StatelessWidget {
  const FillCustomerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 2; i++)
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Customer Name',
                    style: AppStyle.medium16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(8),
                  CustomTextField(),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
