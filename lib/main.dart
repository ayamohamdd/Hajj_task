import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mvp_task/core/constants/app_constants.dart';
import 'package:mvp_task/hajj_screen/presentation/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: AppConstants.appFont,
      ),
      builder: DevicePreview.appBuilder,
      home: const HomeScreen(),
    );
  }
}
