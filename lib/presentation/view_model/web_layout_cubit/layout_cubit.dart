import 'package:flutter_bloc/flutter_bloc.dart';

part 'layout_state.dart';

///This cubit manage changes in layout
///for example: if you are using tablet it will
///change the content when you click on drawer options,
///it will emit new state to show the screen you clicked on
class LayoutCubit extends Cubit<LayoutState> {
  ///The default screen is Home screen
  LayoutCubit() : super(LayoutShowHomeScreen());

  ///This method just emit new state to change
  ///the content to show History screen
  void showHistoryView() {
    emit(LayoutShowHistoryScreen());
  }

  ///This method just emit new state to change
  ///the content to show Favorite screen
  void showFavoriteView() {
    emit(LayoutShowFavoriteScreen());
  }

  ///This method just emit new state to change
  ///the content to show Home screen
  void showHomeView() {
    emit(LayoutShowHomeScreen());
  }
}
