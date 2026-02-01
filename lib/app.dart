import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/splash_screen.dart';
class taskManagerApp extends StatelessWidget {
  const taskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
