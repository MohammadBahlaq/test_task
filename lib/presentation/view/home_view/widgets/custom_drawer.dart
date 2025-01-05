// ignore_for_file: no_magic_number
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:short_navigation/short_navigation.dart';
import 'package:test_task/core/app_images.dart';
import 'package:test_task/core/size_config.dart';
import 'package:test_task/data/model/drawer_model.dart';
import 'package:test_task/presentation/view/favorite_view/favorite_view.dart';
import 'package:test_task/presentation/view/history_view/history_view.dart';
import 'package:test_task/presentation/view_model/favorite_cubit/favorite_cubit.dart';
import 'package:test_task/presentation/view_model/history_cubit/colors_history_cubit.dart';
import 'package:test_task/presentation/view_model/web_layout_cubit/layout_cubit.dart';

///This Drawe just for Home page
class CustomDrawer extends StatelessWidget {
  ///You don't need to pass anything
  const CustomDrawer({super.key});

  ///This list containes options that shown in drawer
  ///if you need any new option, you just need to add it's object
  static const List<DrawerModel> drawerItems = [
    DrawerModel(icon: Icons.home, title: 'Home'),
    DrawerModel(icon: Icons.favorite, title: 'Favorite'),
    DrawerModel(icon: Icons.history, title: 'History'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.grey[400],
      child: Column(
        children: [
          SvgPicture.asset(
            AppImages.solidSoftwareLogo,
            height: 200,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => _action(context, index),
                  leading: Icon(drawerItems[index].icon),
                  title: Text(drawerItems[index].title),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _action(BuildContext context, int index) {
    final favoriteCubit = BlocProvider.of<FavoriteCubit>(context);
    final historyCubit = BlocProvider.of<ColorsHistoryCubit>(context);
    final layoutCubit = BlocProvider.of<LayoutCubit>(context);
    final width = MediaQuery.sizeOf(context).width;

    switch (index) {
      case 0:

        ///Home page button will work just if you are in tablet view
        if (width > SizeConfig.mobile && width < SizeConfig.tablet) {
          layoutCubit.showHomeView();
        }

      case 1:
        favoriteCubit.fetchFavoriteColors();

        ///If you are not using mobile it will not navigate
        ///to favorite screen, but it will shown directly
        if (width > SizeConfig.mobile) {
          layoutCubit.showFavoriteView();
        }

        if (width < SizeConfig.mobile) {
          GoScale.to(const FavoriteView());
        }
      case 2:
        historyCubit.getHistoryColors();

        ///If you are not using mobile it will not navigate
        ///to History screen, but it will shown directly
        if (width > SizeConfig.mobile) {
          layoutCubit.showHistoryView();
        }

        if (width < SizeConfig.mobile) {
          GoSize.to(const HistoryView());
        }
    }
  }
}
