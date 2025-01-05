///This class to define sizes that will use
///in the project (Mobile, Tablet, Web)
///it is a guess work depends on project
abstract class SizeConfig {
  ///This size (800) will be for tablet
  ///if the size of screen more than 800
  ///that's mean we are not using tablet
  ///otherwise we are using tablet or mobile
  static const double tablet = 800;

  ///This size (550) will be for mobile
  ///if the size of screen more than 550
  ///that's mean we are not using mobile
  ///otherwise we are using mobile
  static const double mobile = 550;
}
