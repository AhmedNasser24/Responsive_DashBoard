import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/home_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F9FA) ,
      ),
       home: const HomeView(),
    );
  }
}