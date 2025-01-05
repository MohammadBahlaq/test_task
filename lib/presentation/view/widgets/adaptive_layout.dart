import 'package:flutter/material.dart';
import 'package:test_task/core/size_config.dart';

///This Widget will return MobileLayout or TabletLayout
///or WebLayout depends on screen width
class AdaptiveLayout extends StatelessWidget {
  ///You have to pass every layout
  ///for every platform
  const AdaptiveLayout({
    required this.mobileLayout,
    required this.tabledLayout,
    required this.desktopLayout,
    super.key,
  });

  ///It is a bulder will return [mobileLayout]
  ///when you need it you can call it
  final WidgetBuilder mobileLayout;

  ///It is a bulder will return [tabledLayout]
  ///when you need it you can call it
  final WidgetBuilder tabledLayout;

  ///It is a bulder will return [desktopLayout]
  ///when you need it you can call it
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < SizeConfig.mobile) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < SizeConfig.tablet) {
          return tabledLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
