import 'package:flutter/material.dart';
import 'package:test_task/core/app_styles.dart';
import 'package:test_task/core/convert_color_model.dart';
import 'package:test_task/data/model/color_model/color_model.dart';
import 'package:test_task/presentation/view/favorite_view/widgets/favorite_icon.dart';

///This is the widget that shown in History and Favorite
///screens to display the colors
class ColorItemWidget extends StatelessWidget {
  ///You must to pass [colorModel]
  const ColorItemWidget({
    required this.colorModel,
    super.key,
  });

  ///This variable used to show data for every color
  final ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      color: colorModel.toColor(),
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Alpha: ${colorModel.alpha}',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle17(context),
            ),
          ),
          Expanded(
            child: Text(
              'Red: ${colorModel.red}',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle17(context).copyWith(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Green: ${colorModel.green}',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle17(context).copyWith(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Blue: ${colorModel.blue}',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle17(context).copyWith(
                color: Colors.blue,
              ),
            ),
          ),
          FavoriteIcon(colorModel: colorModel),
        ],
      ),
    );
  }
}
