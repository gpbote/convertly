import 'package:flutter/material.dart';

import '../converter/screens/weight_converter_screen.dart';
import 'widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Convertly')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            ConverterCategoryCard(
              title: 'Weight',
              icon: Icons.scale,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WeightConverterScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
