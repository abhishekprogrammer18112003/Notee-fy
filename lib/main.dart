import 'package:flutter/material.dart';
import 'package:noteefy/route/custom_navigator.dart';

import 'core/constants/app_themes.dart';
import 'core/loaded_widget.dart';
import 'features/onboarding/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pick a service',
      initialRoute: '/',
      onGenerateRoute: CustomNavigator.controller,
      themeMode: ThemeMode.light,
      builder: OverlayManager.transitionBuilder(),
      theme: AppThemes.light,
      home: const SplashScreen(),
    );
  }
}