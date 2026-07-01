class SpeedConverter {
  static const List<String> units = [
    'Meters/second',
    'Kilometers/hour',
    'Miles/hour',
    'Feet/second',
    'Knots',
  ];

  static const Map<String, double> _toMetersPerSecond = {
    'Meters/second': 1.0,
    'Kilometers/hour': 0.2777777778,
    'Miles/hour': 0.44704,
    'Feet/second': 0.3048,
    'Knots': 0.514444,
  };

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    final metersPerSecond = value * _toMetersPerSecond[from]!;
    return metersPerSecond / _toMetersPerSecond[to]!;
  }
}
