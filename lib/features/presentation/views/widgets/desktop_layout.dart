import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/main_content.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/trailing_content.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
          Gap(32),
          Expanded(
            flex: 8 ,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(flex: 5, child: MainContent()),
                      Gap(32),
                      Expanded(flex: 3, child: TrailingContent()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
