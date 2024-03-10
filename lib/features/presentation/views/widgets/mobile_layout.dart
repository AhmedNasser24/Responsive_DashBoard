import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/main_content.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/trailing_content.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: customAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MainContent(),
            Gap(32),
            TrailingContent(),
          ],
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu)),
    );
  }
}
