import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double value;
  final String unit;

  const ResultCard({
    super.key,
    required this.value,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Converted Value',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            SelectableText(
              '${value.toStringAsFixed(4)} $unit',
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
