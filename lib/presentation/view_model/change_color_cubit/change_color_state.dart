part of 'change_color_cubit.dart';

///This class represents all states
abstract class ChangeColorState {}

///This state emitted if the color changed
final class ChangeColorSuccess extends ChangeColorState {
  ///This variable store new color
  ///and passed to widgets to show it in background
  final ColorModel newColor;

  ///You must to pass [newColor] or it will not work
  ChangeColorSuccess({required this.newColor});
}
