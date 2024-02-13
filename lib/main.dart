import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/home_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeView(),
    );
  }
}