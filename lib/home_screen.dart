import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_colors.dart';
import 'package:mvp_task/hajj_wheel_widget.dart';
import 'core/constants/app_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(AppStrings.hajjScreenTitle),
        centerTitle: true,
      ),
      body: const Column(children: [HajjWheelWidget()]),
    );
  }
}
