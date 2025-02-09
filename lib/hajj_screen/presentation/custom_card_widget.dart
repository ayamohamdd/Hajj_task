import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_colors.dart';
import 'package:mvp_task/core/constants/app_strings.dart';
import 'package:mvp_task/core/utils/app_dimenstions.dart';
import 'package:mvp_task/core/widgets/icon_button_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: AppDimension.screenHeight * 0.03,
          horizontal: AppDimension.screenWidth * 0.06),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppDimension.screenHeight * 0.04,
              horizontal: AppDimension.screenWidth * 0.05),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                AppStrings.hajjScreenContent,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonWidget(
                    icon: Icons.bookmark_border,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  IconButtonWidget(
                    icon: Icons.share,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
