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
  HajjWheelWidget(
      {super.key,
      required this.selectedController,
      required this.selectedIndex});
  final StreamController<int> selectedController;
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HajjCubit, HajjState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
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
                  items: List.generate(AppConstants.totalItems, (index) {
                    print(context.read<HajjCubit>().currentIndex);
                    double angle = ((pi / 2) - index * (pi / 6));
                    return FortuneItem(
                      style: const FortuneItemStyle(
                        color: Colors.transparent,
                        borderWidth: 0,
                        borderColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Transform.translate(
                          offset:
                              index == context.read<HajjCubit>().currentIndex
                                  ? Offset(22, 0)
                                  : index == 2
                                      ? Offset(18, -7)
                                      : index == 4
                                          ? Offset(18, 7)
                                          : index == 5
                                              ? Offset(18, -5)
                                              : index == 7
                                                  ? Offset(18, 9)
                                                  : index == 8
                                                      ? Offset(18, -5)
                                                      : index == 10
                                                          ? Offset(18, 8)
                                                          : index == 11
                                                              ? Offset(18, -5)
                                                              : Offset(18, 2),
                          child: Transform.rotate(
                            angle: angle,
                            child: Image.asset(
                              AppConstants.wheelImages[index],
                              fit: BoxFit.contain,
                              width: AppDimension.screenWidth * 0.5,
                              height: AppDimension.screenHeight * 0.4,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              child: Image.asset(AppAssets.group12, width: 170, height: 170),
            ),
          ],
        );
      },
    );
  }

  Offset getOffsetForIndex(int index) {
    double x = 11;
    double y = 2;

    if (index % 3 == 0) {
      y = -5;
    } else if (index % 4 == 0) {
      y = 7;
    } else if (index % 5 == 0) {
      y = 9;
    } else if (index % 2 == 0) {
      y = -7;
    }

    return Offset(x, y);
  }
}
