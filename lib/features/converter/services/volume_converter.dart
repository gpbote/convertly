class VolumeConverter {
  static const units = [
    'Milliliter',
    'Liter',
    'Cup',
    'Pint',
    'Gallon',
  ];

  static const Map<String, double> _toLiter = {
    'Milliliter': 0.001,
    'Liter': 1.0,
    'Cup': 0.236588,
    'Pint': 0.473176,
    'Gallon': 3.78541,
  };

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    final liters = value * _toLiter[from]!;
    return liters / _toLiter[to]!;
  }
}
