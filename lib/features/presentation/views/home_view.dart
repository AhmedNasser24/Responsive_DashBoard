import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/features/presentation/views/widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      
    );
  }
}
