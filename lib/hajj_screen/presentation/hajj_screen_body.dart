import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvp_task/core/utils/app_dimenstions.dart';
import 'package:mvp_task/hajj_screen/controller/cubit/hajj_cubit.dart';
import 'package:mvp_task/hajj_screen/presentation/custom_card_widget.dart';
import 'package:mvp_task/hajj_screen/presentation/hajj_wheel_icons_row.dart';
import 'package:mvp_task/hajj_screen/presentation/hajj_wheel_widget.dart';

class HajjScreenBody extends StatefulWidget {
  const HajjScreenBody({super.key});

  @override
  _HajjWheelWidgetState createState() => _HajjWheelWidgetState();
}

class _HajjWheelWidgetState extends State<HajjScreenBody> {
  final StreamController<int> _selectedController = StreamController<int>();
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => HajjCubit(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
                offset: Offset(0, -AppDimension.screenHeight * 0.25),
                child: HajjWheelWidget(
                  selectedController: _selectedController,
                  selectedIndex: _selectedIndex,
                )),
            Transform.translate(
                offset: Offset(0, -AppDimension.screenHeight * 0.25),
                child: HajjWheelIconsRow(
                  selectedController: _selectedController,
                )),
            Transform.translate(
                offset: Offset(0, -AppDimension.screenHeight * 0.25),
                child: const CustomCardWidget())
          ],
        ),
      ),
    );
  }
}
