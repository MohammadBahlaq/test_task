part of 'favorite_cubit.dart';

///This is general class for all states
abstract class FavoriteState {}

///This class represent the default state
final class FavoriteInitial extends FavoriteState {}

///This class emitted when add new color to favorite done
final class FavoriteAddSuccess extends FavoriteState {}

///This class emitted when delete color from favorite done
final class FavoriteDeleteSuccess extends FavoriteState {}

///This state emitted if fetching data success
final class FavoriteFetchSuccess extends FavoriteState {}
