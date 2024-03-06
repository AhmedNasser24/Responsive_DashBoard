import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/income_content.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        IncomeHeader(),
        Gap(20),
        IncomeContent(),
      ],
    ));
  }
}
