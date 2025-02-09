import 'package:flutter/material.dart';

class AppDimension {
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static void initDimensions(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
 
  }
}
