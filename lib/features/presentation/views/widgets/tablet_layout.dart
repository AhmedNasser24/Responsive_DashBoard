import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/main_content.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/trailing_content.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
            child: Column(
              children: [
                MainContent(),
                Gap(32),
                TrailingContent(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}