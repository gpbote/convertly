import 'package:flutter/material.dart';
import '../features/home/home_screen.dart';
import 'theme.dart';

class ConvertlyApp extends StatelessWidget {
  const ConvertlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Convertly',
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
