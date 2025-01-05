///This class used to write every image path and
///save it in static const variable to call it easly
///like:
///```dart
///AppImages.solidSoftwareLogo //Using this line is better than using long image's path
///```
abstract class AppImages {
  ///This line to get Solid.Software's logo path from assets
  static const String solidSoftwareLogo = 'assets/images/solid_software_logo.svg';
}
