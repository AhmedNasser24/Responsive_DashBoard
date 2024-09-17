import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
  void main() {
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const ResponsiveDashBoard(), // Wrap your app
  //   ),
  // );
  runApp(
    const ResponsiveDashBoard(),
  );
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F9FA) ,
        fontFamily: 'Montserrat' ,
      ),
       home: const HomeView(),
    );
  }
}