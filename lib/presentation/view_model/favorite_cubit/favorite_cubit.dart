import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test_task/core/constants.dart';
import 'package:test_task/data/model/color_model/color_model.dart';

part 'favorite_state.dart';

///This cubit used to mange any thing related with favorite colors
class FavoriteCubit extends Cubit<FavoriteState> {
  ///This list stores favorite colors, and shown in Favorite screen
  List<ColorModel> favoriteColors = [];

  ///
  FavoriteCubit() : super(FavoriteInitial());

  ///This method used to add new color to favorite
  ///but it acctually change the variable isFavorite to true
  ///and save changes in the HiveBox.
  Future<void> addColorToFavorite(ColorModel color) async {
    color.isFavorite = true;
    await color.save();
    emit(FavoriteAddSuccess());
  }

  ///This method used to remove color from favorite
  ///but it acctually change the variable isFavorite to false.
  Future<void> removeColorFromFavorite(ColorModel color) async {
    color.isFavorite = false;
    await color.save();
    favoriteColors.remove(color);
    emit(FavoriteDeleteSuccess());
  }

  ///This method used to fetch all favorite colors
  void fetchFavoriteColors() {
    final Box<ColorModel> box = Hive.box(Constants.kColorsBoxName);

    final List<ColorModel> allColors = box.values.toList();
    favoriteColors = allColors.where((element) => element.isFavorite).toList();
    emit(FavoriteFetchSuccess());
  }
}
