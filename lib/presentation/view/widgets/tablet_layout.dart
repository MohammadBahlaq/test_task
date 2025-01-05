import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/view/favorite_view/favorite_view.dart';
import 'package:test_task/presentation/view/history_view/history_view.dart';
import 'package:test_task/presentation/view/home_view/home_view.dart';
import 'package:test_task/presentation/view/home_view/widgets/custom_drawer.dart';
import 'package:test_task/presentation/view_model/web_layout_cubit/layout_cubit.dart';

///This widget return a widgets which you want
///to show in Tablet case
class TabletLayout extends StatelessWidget {
  ///You don't need to pass anything
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const SizedBox(width: 15),
        BlocBuilder<LayoutCubit, LayoutState>(
          builder: (_, state) {
            if (state is LayoutShowHomeScreen) {
              return const Expanded(
                flex: 2,
                child: HomeView(),
              );
            } else if (state is LayoutShowFavoriteScreen) {
              return const Expanded(
                flex: 2,
                child: FavoriteView(),
              );
            } else {
              return const Expanded(
                flex: 2,
                child: HistoryView(),
              );
            }
          },
        ),
      ],
    );
  }
}
