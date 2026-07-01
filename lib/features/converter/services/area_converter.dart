class AreaConverter {
  static const units = [
    'Square Meter',
    'Square Kilometer',
    'Square Foot',
    'Square Yard',
    'Acre',
    'Hectare',
  ];

  static const Map<String, double> _toSquareMeter = {
    'Square Meter': 1.0,
    'Square Kilometer': 1000000.0,
    'Square Foot': 0.092903,
    'Square Yard': 0.836127,
    'Acre': 4046.8564224,
    'Hectare': 10000.0,
  };

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    final sqm = value * _toSquareMeter[from]!;
    return sqm / _toSquareMeter[to]!;
  }
}
