import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_colors.dart';
import 'package:mvp_task/core/constants/app_constants.dart';
import 'package:mvp_task/hajj_screen/presentation/custom_card_widget.dart';
import 'package:mvp_task/hajj_screen/presentation/hajj_screen_body.dart';
import '../../core/constants/app_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppStrings.hajjScreenAppBarTitle,
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const HajjScreenBody(),
    );
  }
}
