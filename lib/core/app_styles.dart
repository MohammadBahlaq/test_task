// ignore_for_file: no_magic_number
import 'package:flutter/material.dart';
import 'package:test_task/core/size_config.dart';

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

///This extension to return responsiveFontSize
///depends on platform
extension ResponsiveFontSize on num {
  ///This method will calculate the new size depends on screen width
  ///for example: if we send 17 to this method
  ///and say that average mobile screens 400px
  ///that's mean fontSize will be 17 for 400px width, but if the screen width
  ///is more than 400px the size will get scale depends on
  ///screen width let's say 500px.
  ///to calculate how much 17px should be in 500px screen width?
  ///Answer: 17 * (400/500) it will give you the new fontSize for 500px width
  ///but of course there is a max value and min value the size must be between
  ///max value will be (17 * 1.20) and min value (17 * 0.80)
  ///because it will be so small or so large
  double getFontSize(BuildContext context) {
    final currentWidth = MediaQuery.sizeOf(context).width;

    const double avgMobileWidth = 400;
    const double avgTabletWidth = 600;
    const double avgDesktopWidth = 1000;

    final double upperLimit = this * 1.2;
    final double lowerLimit = this * 0.8;
    double scaleFactor = 0;
    double responsiveFontSize;

    if (currentWidth < SizeConfig.mobile) {
      scaleFactor = currentWidth / avgMobileWidth;
    } else if (currentWidth < SizeConfig.tablet) {
      scaleFactor = currentWidth / avgTabletWidth;
    } else {
      scaleFactor = currentWidth / avgDesktopWidth;
    }
    responsiveFontSize = this * scaleFactor;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
