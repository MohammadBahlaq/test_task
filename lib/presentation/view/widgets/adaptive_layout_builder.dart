import 'package:flutter/material.dart';
import 'package:test_task/core/size_config.dart';
import 'package:test_task/presentation/view/home_view/widgets/custom_drawer.dart';
import 'package:test_task/presentation/view/home_view/widgets/home_app_bar.dart';
import 'package:test_task/presentation/view/widgets/adaptive_layout.dart';
import 'package:test_task/presentation/view/widgets/mobile_layout.dart';
import 'package:test_task/presentation/view/widgets/tablet_layout.dart';
import 'package:test_task/presentation/view/widgets/web_layout.dart';

///This Widget will show Mobile or Tablet
///or Web depends on AdaptiveLayout Widget
class AdaptiveLayoutBuilder extends StatelessWidget {
  ///You don't need to pass anything
  const AdaptiveLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: width > SizeConfig.mobile ? null : const HomeAppBar(),
      drawer: const CustomDrawer(),
      body: AdaptiveLayout(
        mobileLayout: (_) => const MobileLayout(),
        tabledLayout: (_) => const TabletLayout(),
        desktopLayout: (_) => const WebLayout(),
      ),
    );
  }
}
