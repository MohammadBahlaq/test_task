import 'package:flutter/widgets.dart';
import 'package:test_task/presentation/view/home_view/home_view.dart';

///This widget return a widgets which you want
///to show in Mobile case
class MobileLayout extends StatelessWidget {
  ///You don't need to pass anything
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
