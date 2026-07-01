class LengthConverter {
  static const Map<String, double> _meters = {
    'Millimeter': 0.001,
    'Centimeter': 0.01,
    'Meter': 1.0,
    'Kilometer': 1000.0,
    'Inch': 0.0254,
    'Foot': 0.3048,
    'Yard': 0.9144,
    'Mile': 1609.344,
  };

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    final meters = value * _meters[from]!;
    return meters / _meters[to]!;
  }

  static List<String> get units => _meters.keys.toList();
}
