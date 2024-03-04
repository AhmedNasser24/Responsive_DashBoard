import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout , tabletLayout , desktopLayout ;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth < 430) {
        return mobileLayout(context);
      } else if (constrain.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}