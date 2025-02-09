import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_constants.dart';
import 'package:mvp_task/hajj_screen/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppConstants.appFont,
      ),
      home: const HomeScreen(),
    );
  }
}
