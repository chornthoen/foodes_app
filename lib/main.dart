
import 'package:flutter/material.dart';
import 'screens/get_start/get_start_change.dart';
import 'screens/get_start/get_start_screen.dart';

import 'screens/loging/login_screen.dart';
import 'screens/register/register_screen.dart';
import 'screens/splash_screen/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
