import 'package:flutter/material.dart';

class StringUnitDropdown extends StatelessWidget {
  final String initialUnit;
  final List<String> units;
  final ValueChanged<String?> onChanged;

  const StringUnitDropdown({
    super.key,
    required this.initialUnit,
    required this.units,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: initialUnit,
      decoration: const InputDecoration(
        labelText: 'Unit',
        border: OutlineInputBorder(),
      ),
      items: units
          .map(
            (unit) => DropdownMenuItem<String>(
              value: unit,
              child: Text(unit),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
