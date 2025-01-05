// ignore_for_file: no_magic_number
import 'package:flutter/material.dart';
import 'package:test_task/core/responsive_font_size.dart';

///This class containes all TextStyles you need
///in the project
abstract class AppStyles {
  ///This method will return default size 14.0
  static TextStyle defaultStyle(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: 14.getFontSize(context),
    );
  }

  ///This method will return 17 fontSize
  static TextStyle textStyle17(BuildContext context) {
    return TextStyle(fontSize: 17.getFontSize(context), color: Colors.black);
  }
}
