// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/core/app_styles.dart';
import 'package:test_task/core/convert_color_model.dart';
import 'package:test_task/presentation/view_model/change_color_cubit/change_color_cubit.dart';
import 'package:test_task/presentation/view_model/history_cubit/colors_history_cubit.dart';

///This variable containes default value if there is no
///value for Red or Green or Blue or Alpha
const int _defaultColorValue = 255;

///This is Home view that will shown after splash view directly
class HomeView extends StatelessWidget {
  ///HomeView Constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final changeColorCubit = BlocProvider.of<ChangeColorCubit>(context);
    final historyCubit = BlocProvider.of<ColorsHistoryCubit>(context);

// if (width < SizeConfig.tablet)

    return BlocConsumer<ChangeColorCubit, ChangeColorState>(
      listener: (_, __) {
        historyCubit.getHistoryColors();
      },
      builder: (_, state) {
        return GestureDetector(
          onTap: changeColorCubit.changeColorRandomly,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            color: state is ChangeColorSuccess
                ? state.newColor.toColor() //
                : Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello world',
                  style: AppStyles.textStyle17(context),
                ),
                const SizedBox(height: 16),
                Text(
                  'Alpha: ${state is ChangeColorSuccess ? state.newColor.alpha : _defaultColorValue}',
                  style: AppStyles.textStyle17(context),
                ),
                Text(
                  'Red: ${state is ChangeColorSuccess ? state.newColor.red : _defaultColorValue}',
                  style: AppStyles.textStyle17(context).copyWith(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'Green: ${state is ChangeColorSuccess ? state.newColor.red : _defaultColorValue}',
                  style: AppStyles.textStyle17(context).copyWith(
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Blue: ${state is ChangeColorSuccess ? state.newColor.red : _defaultColorValue}',
                  style: AppStyles.textStyle17(context).copyWith(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
