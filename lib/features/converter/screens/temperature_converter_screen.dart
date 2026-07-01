import 'package:flutter/material.dart';

import '../services/temperature_converter.dart';
import '../widgets/result_card.dart';
import '../widgets/string_unit_dropdown.dart';

class TemperatureConverterScreen extends StatefulWidget {
  const TemperatureConverterScreen({super.key});

  @override
  State<TemperatureConverterScreen> createState() => _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState extends State<TemperatureConverterScreen> {
  final _controller = TextEditingController();

  final _units = TemperatureConverter.units;

  late String _from = _units.first;
  late String _to = _units[1];

  double _result = 0;

  void _convert() {
    final input = double.tryParse(_controller.text) ?? 0;
    setState(() {
      _result = TemperatureConverter.convert(
        from: _from,
        to: _to,
        value: input,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Temperature Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(labelText: 'Temperature'),
            ),
            const SizedBox(height: 16),
            StringUnitDropdown(
              initialUnit: _from,
              units: _units,
              onChanged: (v) => _from = v!,
            ),
            const SizedBox(height: 12),
            StringUnitDropdown(
              initialUnit: _to,
              units: _units,
              onChanged: (v) => _to = v!,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convert,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 20),
            ResultCard(
              value: _result,
              unit: _to,
            ),
          ],
        ),
      ),
    );
  }
}
