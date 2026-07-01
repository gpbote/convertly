import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Convertly')),
      body: const Center(
        child: Text(
          'Sprint 1 - Home Screen',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
