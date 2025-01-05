import 'package:flutter/material.dart';

///This AppBar just for Home screen
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  ///No need to pass anything in constructor
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('Test Task Solid.Software'),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
