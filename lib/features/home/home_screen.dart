import 'package:flutter/material.dart';

import '../converter/converter_registry.dart';
import 'widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final converters = ConverterRegistry.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Convertly'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: converters.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final converter = converters[index];

            return ConverterCategoryCard(
              title: converter.title,
              icon: converter.icon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => converter.screen,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
