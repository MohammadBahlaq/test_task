import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test_task/core/constants.dart';
import 'package:test_task/data/model/color_model/color_model.dart';

part 'colors_history_state.dart';

///This cubit used to manage any thing related with History screen
class ColorsHistoryCubit extends Cubit<ColorsHistoryState> {
  ///This is the constructor, and the default state
  ColorsHistoryCubit() : super(ColorsHistoryInitial());

  ///This methe used to get all colors in the HiveBox
  ///which containes all colors shown randomely in background
  void getHistoryColors() {
    final Box<ColorModel> colorBox = Hive.box(Constants.kColorsBoxName);
    final List<ColorModel> colors = colorBox.values.toList().reversed.toList();

    emit(ColorsHistorySccess(colors: colors));
  }
}
