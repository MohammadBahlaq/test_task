import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_navigation/short_navigation.dart';
import 'package:test_task/presentation/view/widgets/adaptive_layout_builder.dart';
import 'package:test_task/presentation/view_model/change_color_cubit/change_color_cubit.dart';
import 'package:test_task/presentation/view_model/favorite_cubit/favorite_cubit.dart';
import 'package:test_task/presentation/view_model/history_cubit/colors_history_cubit.dart';
import 'package:test_task/presentation/view_model/web_layout_cubit/layout_cubit.dart';

///This class is the head of Widge Tree
class MyApp extends StatelessWidget {
  ///Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ChangeColorCubit()),
        BlocProvider(create: (_) => FavoriteCubit()),
        BlocProvider(create: (_) => ColorsHistoryCubit()),
        BlocProvider(create: (_) => LayoutCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Go.navigatorKey,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const AdaptiveLayoutBuilder(),
      ),
    );
  }
}
