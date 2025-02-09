import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:mvp_task/core/constants/app_assets.dart';
import 'package:mvp_task/core/constants/app_constants.dart';
import 'package:mvp_task/core/utils/app_dimenstions.dart';
import 'package:mvp_task/hajj_screen/controller/cubit/hajj_cubit.dart';

class HajjWheelWidget extends StatelessWidget {
  const HajjWheelWidget({super.key, required this.selectedController});

  final StreamController<int> selectedController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        int highlightedIndex = context.watch<HajjCubit>().currentIndex;

        return Stack(
          alignment: Alignment.center,
          children: [
            _buildWheel(highlightedIndex),
            _buildCenterImage(),
          ],
        );
      },
    );
  }

  Widget _buildWheel(int highlightedIndex) {
    return Transform.rotate(
      angle: pi,
      child: SizedBox(
        width: AppDimension.screenWidth,
        height: AppDimension.screenHeight * 0.6,
        child: FortuneWheel(
          animateFirst: false,
          duration: Duration.zero,
          physics: NoPanPhysics(),
          selected: selectedController.stream,
          indicators: [],
          items: List.generate(
            AppConstants.totalItems,
            (index) => _buildFortuneItem(index, highlightedIndex),
          ),
        ),
      ),
    );
  }

  FortuneItem _buildFortuneItem(int index, int highlightedIndex) {
    double angle = ((pi / 2) - index * (pi / 6));

    return FortuneItem(
      style: const FortuneItemStyle(
        color: Colors.transparent,
        borderWidth: 0,
        borderColor: Colors.white,
      ),
      child: Transform.translate(
        offset: highlightedIndex == index ? const Offset(7, 0) : Offset.zero,
        child: Padding(
          padding: EdgeInsets.all(AppDimension.screenWidth * 0.055),
          child: Transform.translate(
            offset: _calculateOffset(index),
            child: Transform.rotate(
              angle: angle,
              child: Opacity(
                opacity: _isHighlighted(index, highlightedIndex) ? 1 : 0.3,
                child: Image.asset(
                  AppConstants.wheelImages[index],
                  fit: BoxFit.contain,
                  width: AppDimension.screenWidth * 0.5,
                  height: AppDimension.screenHeight * 0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the center image overlay.
  Widget _buildCenterImage() {
    return Positioned(
      child: Image.asset(AppAssets.group12, width: 170, height: 170),
    );
  }

  /// Calculates the offset for each index.
  Offset _calculateOffset(int index) {
    final Map<int, Offset> offsetMap = {
      0: const Offset(15, 0),
      2: const Offset(15, -7),
      4: const Offset(15, 7),
      5: const Offset(15, -5),
      7: const Offset(15, 9),
      8: const Offset(15, -5),
      10: const Offset(15, 8),
      11: const Offset(15, -5),
    };
    return offsetMap[index] ?? const Offset(18, 2);
  }

  bool _isHighlighted(int index, int highlightedIndex) {
    return List.generate(
      4,
      (i) => (highlightedIndex + i) % AppConstants.totalItems,
    ).contains(index);
  }
}
