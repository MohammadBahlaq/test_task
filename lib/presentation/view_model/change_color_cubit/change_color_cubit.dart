// ignore_for_file: lines_longer_than_80_chars, no_magic_number

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test_task/core/constants.dart';
import 'package:test_task/data/model/color_model/color_model.dart';

part 'change_color_state.dart';

///This Cubit in charge changing color in backgroung
class ChangeColorCubit extends Cubit<ChangeColorState> {
  ///In this constructor I set backgroundColor white by default
  ChangeColorCubit() : super(ChangeColorSuccess(newColor: ColorModel.initial()));

  ///This function if you don't want a random color
  ///for background, but if you want to choes previous color
  ///from history screen or favorite screen you will need it
  void changeToSpecificColor(ColorModel newColor) {
    emit(ChangeColorSuccess(newColor: newColor));
  }

  ///This function to generate random color
  ///it will generate 4 numbers for (Alpha, Red, Green, Blue) between 0-255
  Future<void> changeColorRandomly() async {
    final Random random = Random();

    final ColorModel newColor = ColorModel(
      //! important: if you want to enable Alpha
      //! just remove 255 and write [alpha] instead
      ///now it generate (256 X 256 X 256) colors
      ///which means 16777216 colors as you want.
      ///But if you want to enable opacity (alpha)
      ///just what you have to do is to write
      ///``dart
      ///random.nextInt(Constants.kMaxRandomNumberForColors)
      ///``
      /// instead of 255
      alpha: 255,
      red: random.nextInt(Constants.kMaxRandomNumberForColors),
      green: random.nextInt(Constants.kMaxRandomNumberForColors),
      blue: random.nextInt(Constants.kMaxRandomNumberForColors),
    );

    final Box<ColorModel> colorBox = Hive.box<ColorModel>(Constants.kColorsBoxName);
    await colorBox.add(newColor);

    emit(ChangeColorSuccess(newColor: newColor));
  }
}
