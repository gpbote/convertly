import 'package:flutter/material.dart';

import '../widgets/result_card.dart';
import '../widgets/string_unit_dropdown.dart';

typedef ConverterFunction = double Function({
  required String from,
  required String to,
  required double value,
});

class BaseConverterScreen extends StatefulWidget {
  final String title;
  final List<String> units;
  final ConverterFunction convert;

  const BaseConverterScreen({
    super.key,
    required this.title,
    required this.units,
    required this.convert,
  });

  @override
  State<BaseConverterScreen> createState() => _BaseConverterScreenState();
}

class _BaseConverterScreenState extends State<BaseConverterScreen> {
  final TextEditingController _controller = TextEditingController();

  late String _from = widget.units.first;
  late String _to = widget.units.length > 1 ? widget.units[1] : widget.units.first;
  double _result = 0;

  void _convert() {
    final value = double.tryParse(_controller.text) ?? 0;
    setState(() {
      _result = widget.convert(from: _from, to: _to, value: value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Value',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            StringUnitDropdown(
              initialUnit: _from,
              units: widget.units,
              onChanged: (v) => _from = v!,
            ),
            const SizedBox(height: 12),
            StringUnitDropdown(
              initialUnit: _to,
              units: widget.units,
              onChanged: (v) => _to = v!,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _convert, child: const Text('Convert')),
            const SizedBox(height: 20),
            ResultCard(value: _result, unit: _to),
          ],
        ),
      ),
    );
  }
}
