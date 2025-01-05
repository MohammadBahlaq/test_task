import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_task/core/constants.dart';
import 'package:test_task/data/model/color_model/color_model.dart';
import 'package:test_task/my_app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ColorModelAdapter());
  await Hive.openBox<ColorModel>(Constants.kColorsBoxName);
  runApp(
    const MyApp(),
  );
}
