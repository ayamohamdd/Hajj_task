import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:mvp_task/core/constants/app_assets.dart';
import 'package:mvp_task/core/constants/app_constants.dart';

class HajjWheelWidget extends StatefulWidget {
  const HajjWheelWidget({super.key});

  @override
  State<HajjWheelWidget> createState() => _HajjWheelWidgetState();
}

class _HajjWheelWidgetState extends State<HajjWheelWidget> {
  final int totalItems = 12;

  final StreamController<int> _selectedController = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 400,
              child: FortuneWheel(
                animateFirst: false,
                duration: Duration.zero,
                physics: NoPanPhysics(),
                selected: _selectedController.stream,
                indicators: [],
                items: List.generate(totalItems, (index) {
                  double angle = ((pi / 2) - index * (pi / 6));
                  return FortuneItem(
                    style: const FortuneItemStyle(
                      color: Colors.transparent,
                      borderWidth: 10,
                      borderColor: Colors.white,
                    ),
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        AppConstants.wheelImages[index],
                        width: 400,
                        height: 400,
                      ),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              child: Image.asset(AppAssets.group12, width: 200, height: 200),
            ),
          ],
        ),
      ],
    );
  }
}
