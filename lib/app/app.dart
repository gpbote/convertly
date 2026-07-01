import 'package:flutter/material.dart';

import 'theme.dart';

class ConvertlyApp extends StatelessWidget {
  const ConvertlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convertly',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(
        body: Center(
          child: Text('Convertly'),
        ),
      ),
    );
  }
}
