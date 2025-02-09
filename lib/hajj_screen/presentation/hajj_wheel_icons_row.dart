import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvp_task/core/constants/app_colors.dart';
import 'package:mvp_task/core/constants/app_constants.dart';
import 'package:mvp_task/core/constants/app_strings.dart';
import 'package:mvp_task/core/widgets/icon_button_widget.dart';
import 'package:mvp_task/hajj_screen/controller/cubit/hajj_cubit.dart';

class HajjWheelIconsRow extends StatelessWidget {
  const HajjWheelIconsRow({super.key, required this.selectedController});
  final StreamController<int> selectedController;

  void _rotatePrevious(BuildContext context, int currentIndex) {
    print("heey");
    int newIndex = (currentIndex + 1) % AppConstants.totalItems;
    context.read<HajjCubit>().updateIndex(newIndex);
    selectedController.add(newIndex);
  }

  void _rotateNext(BuildContext context, int currentIndex) {
    int newIndex =
        (currentIndex - 1 + AppConstants.totalItems) % AppConstants.totalItems;
    context.read<HajjCubit>().updateIndex(newIndex);
    selectedController.add(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        int selectedIndex =
            state is HajjCubitUpdateIndexState ? state.index : 0;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButtonWidget(
                icon: Icons.arrow_back_ios,
                onPressed: () => _rotatePrevious(context, selectedIndex)),
            const Text(
              AppStrings.hajjScreenTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButtonWidget(
              icon: Icons.arrow_forward_ios,
              onPressed: () => _rotateNext(context, selectedIndex),
            ),
          ],
        );
      },
    );
  }
}
