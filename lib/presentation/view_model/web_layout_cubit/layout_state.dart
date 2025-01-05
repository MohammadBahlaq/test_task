part of 'layout_cubit.dart';

///This class represents all states
abstract class LayoutState {}

///This state will be emitted when user click on
///History option on drawer (just in Tablet and Web)
class LayoutShowHistoryScreen extends LayoutState {}

///This state will be emitted when user click on
///Favorite option on drawer (just in Tablet and Web)
class LayoutShowFavoriteScreen extends LayoutState {}

///This state will be emitted when user click on
///Home option on drawer (just in Tablet)
class LayoutShowHomeScreen extends LayoutState {}
