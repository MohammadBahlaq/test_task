///This class used for constant values
///I don't want to write the same value every time
///so that I store it in variable and call it
///when I need it simply
abstract class Constants {
  ///This variable store the HiveBox's name
  static const String kColorsBoxName = 'ColorsBox';

  ///This variable store tha max value generated randomly
  ///when we want to generate RGBA color
  static const int kMaxRandomNumberForColors = 256;

  ///This variable containes default value if there is no
  ///value for Red or Green or Blue or Alpha
  static const int defaultColorValue = 255;
}
