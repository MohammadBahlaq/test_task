// ignore_for_file: no_magic_number
import 'package:hive/hive.dart';

part 'color_model.g.dart';

///This class used to save history colors in HiveBox
@HiveType(typeId: 0)
class ColorModel extends HiveObject {
  ///This variable to save color's alpha
  @HiveField(0)
  final int alpha;

  ///This variable to save color's red
  @HiveField(1)
  final int red;

  ///This variable to save color's green
  @HiveField(2)
  final int green;

  ///This variable to save color's blue
  @HiveField(3)
  final int blue;

  ///This variable to save if the color favorite or not
  @HiveField(4)
  bool isFavorite;

  ///You must to pass alpha, red, green, blue
  ///and favorite will be false by default
  ColorModel({
    required this.alpha,
    required this.red,
    required this.green,
    required this.blue,
    this.isFavorite = false,
  });

  ///This constructor used to give you white color
  ///because at the beginning there is no any color
  factory ColorModel.initial() => ColorModel(
        alpha: 255,
        red: 255,
        green: 255,
        blue: 255,
      );
}
