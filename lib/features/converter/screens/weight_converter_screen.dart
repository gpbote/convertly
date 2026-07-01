import 'package:flutter/material.dart';

import '../models/conversion_unit.dart';
import '../services/weight_converter.dart';
import '../widgets/result_card.dart';
import '../widgets/unit_dropdown.dart';

class WeightConverterScreen extends StatefulWidget {
  const WeightConverterScreen({super.key});

  @override
  State<WeightConverterScreen> createState() => _WeightConverterScreenState();
}

class _WeightConverterScreenState extends State<WeightConverterScreen> {
  final TextEditingController _controller = TextEditingController(text: '1');

  late ConversionUnit _from;
  late ConversionUnit _to;

  @override
  void initState() {
    super.initState();
    _from = WeightConverter.units.first;
    _to = WeightConverter.units.last;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final input = double.tryParse(_controller.text) ?? 0.0;
    final output = WeightConverter.convert(
      value: input,
      from: _from,
      to: _to,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Weight Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Value'),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 16),
            UnitDropdown(
              initialUnit: _from,
              units: WeightConverter.units,
              onChanged: (unit) {
                if (unit != null) {
                  setState(() => _from = unit);
                }
              },
            ),
            const SizedBox(height: 16),
            UnitDropdown(
              initialUnit: _to,
              units: WeightConverter.units,
              onChanged: (unit) {
                if (unit != null) {
                  setState(() => _to = unit);
                }
              },
            ),
            const SizedBox(height: 24),
            ResultCard(
              value: output,
              unit: _to.symbol,
            ),
          ],
        ),
      ),
    );
  }
}
