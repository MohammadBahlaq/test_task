import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_navigation/short_navigation.dart';
import 'package:test_task/core/app_styles.dart';
import 'package:test_task/core/convert_color_model.dart';
import 'package:test_task/data/model/color_model/color_model.dart';
import 'package:test_task/presentation/view/history_view/widgets/color_item_widget.dart';
import 'package:test_task/presentation/view_model/change_color_cubit/change_color_cubit.dart';

///This [ListView.builder] to show History colors
///every color shown randomly in home screen will
///stored in this screen, if the user wants to see it
///they can find it in this screen
class ColorsHistoryListView extends StatelessWidget {
  ///You must to pass [colors] you want to show in History screen
  const ColorsHistoryListView({
    required this.colors,
    super.key,
  });

  ///This list containes colors data shown in History screen
  ///You must to pass it in Constructor
  final List<ColorModel> colors;

  @override
  Widget build(BuildContext context) {
    final colorCubit = BlocProvider.of<ChangeColorCubit>(context);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            colorCubit.changeToSpecificColor(colors[index]);
            _snackBar(context, colors[index]);
          },
          child: ColorItemWidget(colorModel: colors[index]),
        );
      },
    );
  }

  void _snackBar(BuildContext context, ColorModel colorModel) {
    GoMessenger.snackBar(
      SnackBar(
        elevation: 0,
        backgroundColor: colorModel.toColor(),
        content: Text(
          'Background changed',
          style: AppStyles.defaultStyle(context),
        ),
      ),
    );
  }
}
