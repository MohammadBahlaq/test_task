part of 'colors_history_cubit.dart';

///This is general class for all states
abstract class ColorsHistoryState {}

///This class represent the default state
class ColorsHistoryInitial extends ColorsHistoryState {}

///This state emitted when fetching data is success
class ColorsHistorySccess extends ColorsHistoryState {
  ///This list containes all colors in HiveBox
  final List<ColorModel> colors;

  ///You must to pass colors with stat
  ///to show it in History screen
  ColorsHistorySccess({required this.colors});
}
