import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/view/favorite_view/widgets/favorite_list_view.dart';
import 'package:test_task/presentation/view_model/favorite_cubit/favorite_cubit.dart';

///This is Favorite Screen to show user favorite colors
class FavoriteView extends StatelessWidget {
  ///This is it's constructor
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteCubit = BlocProvider.of<FavoriteCubit>(context);

    return PopScope(
      onPopInvokedWithResult: (_, __) {
        favoriteCubit.favoriteColors.clear();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
          centerTitle: true,
        ),
        body: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (_, __) {
            return favoriteCubit.favoriteColors.isNotEmpty
                ? FavoriteListView(colors: favoriteCubit.favoriteColors)
                : const Center(
                    child: Text('There is no any favorite'),
                  );
          },
        ),
      ),
    );
  }
}
