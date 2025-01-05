import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/view/history_view/widgets/colors_history_list_view.dart';
import 'package:test_task/presentation/view_model/history_cubit/colors_history_cubit.dart';

///This is  History Screen to show every color
///made randomly and shown on background
class HistoryView extends StatelessWidget {
  ///This is it's constructor
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
      ),
      body: BlocBuilder<ColorsHistoryCubit, ColorsHistoryState>(
        builder: (_, state) {
          return (state is ColorsHistorySccess && state.colors.isNotEmpty)
              ? //
              ColorsHistoryListView(colors: state.colors)
              : const Center(child: Text('There is no any history'));
        },
      ),
    );
  }
}
