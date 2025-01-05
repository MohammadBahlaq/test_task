import 'package:flutter/widgets.dart';
import 'package:test_task/data/model/color_model/color_model.dart';

///This extension just for ColorModel objects
extension ConvertColorModel on ColorModel {
  ///This method to convert ColorModel object to Color class
  Color toColor() {
    return Color.fromARGB(
      alpha,
      red,
      green,
      blue,
    );
  }
}
