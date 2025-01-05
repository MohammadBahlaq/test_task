import 'package:flutter/material.dart';
import 'package:short_navigation/short_navigation.dart';
import 'package:test_task/core/app_styles.dart';
import 'package:test_task/core/convert_color_model.dart';
import 'package:test_task/data/model/color_model/color_model.dart';

///This method just show snackBar
void snackBar(BuildContext context, ColorModel colorModel) {
  GoMessenger.snackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: colorModel.toColor(),
      content: Text(
        'Background changed',
        style: AppStyles.defaultStyle(context),
      ),
    ),
  );
}
