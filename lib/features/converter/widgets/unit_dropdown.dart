import 'package:flutter/material.dart';

import '../models/conversion_unit.dart';

class UnitDropdown extends StatelessWidget {
  final ConversionUnit initialUnit;
  final List<ConversionUnit> units;
  final ValueChanged<ConversionUnit?> onChanged;

  const UnitDropdown({
    super.key,
    required this.initialUnit,
    required this.units,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<ConversionUnit>(
      initialValue: initialUnit,
      decoration: const InputDecoration(
        labelText: 'Unit',
      ),
      items: units.map((unit) {
        return DropdownMenuItem<ConversionUnit>(
          value: unit,
          child: Text('${unit.name} (${unit.symbol})'),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
