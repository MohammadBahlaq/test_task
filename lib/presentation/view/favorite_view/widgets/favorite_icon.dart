import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/data/model/color_model/color_model.dart';
import 'package:test_task/presentation/view_model/favorite_cubit/favorite_cubit.dart';

///This Widget used in History and Favorite Screens
///it is the Icon wich used to add or delete Color
///from favorite
class FavoriteIcon extends StatelessWidget {
  ///You have to pass [colorModel]
  const FavoriteIcon({
    required this.colorModel,
    super.key,
  });

  ///This color used to display data
  ///it must passed by constructor
  final ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    final favoriteCubit = BlocProvider.of<FavoriteCubit>(context);

    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (_, __) {
        return CircleAvatar(
          radius: 18,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (colorModel.isFavorite) {
                favoriteCubit.removeColorFromFavorite(colorModel);
              } else {
                favoriteCubit.addColorToFavorite(colorModel);
              }
            },
            icon: Icon(
              colorModel.isFavorite
                  ? //
                  Icons.favorite
                  : Icons.favorite_border,
            ),
            color: Colors.red,
          ),
        );
      },
    );
  }
}
