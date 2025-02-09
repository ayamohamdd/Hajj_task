import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_task/hajj_screen/presentation/custom_card_widget.dart';
import 'package:mvp_task/hajj_screen/presentation/hajj_wheel_icons_row.dart';

class CardPageView extends StatelessWidget {
  CardPageView({super.key, required this.selectedController});
  final StreamController<int> selectedController;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) => Column(
        children: [
          HajjWheelIconsRow(
            pageController: pageController,
            selectedController: selectedController,
          ),
          CustomCardWidget(),
        ],
      ),
    );
  }
}
