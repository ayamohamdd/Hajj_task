import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_colors.dart';
import 'package:mvp_task/core/utils/app_dimenstions.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.primaryColor,
      child: IconButton(
        onPressed:onPressed,
        icon: Icon(
          icon,
          color: AppColors.iconColor,
          size: 18,
          weight: 5,
        ),
      ),
    );
  }
}
