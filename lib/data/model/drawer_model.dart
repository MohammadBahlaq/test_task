import 'package:flutter/material.dart';

///This Model used for drawer items
class DrawerModel {
  ///This variable to store the icon which
  ///will appear on the leading
  final IconData icon;

  ///This variable to store the option's name in drawer
  final String title;

  ///You must to pass icon, title in this constructor
  const DrawerModel({
    required this.icon,
    required this.title,
  });
}
