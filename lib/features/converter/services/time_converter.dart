class TimeConverter {
  static const List<String> units = [
    'Second',
    'Minute',
    'Hour',
    'Day',
    'Week',
  ];

  static const Map<String, double> _toSeconds = {
    'Second': 1,
    'Minute': 60,
    'Hour': 3600,
    'Day': 86400,
    'Week': 604800,
  };

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    final seconds = value * _toSeconds[from]!;
    return seconds / _toSeconds[to]!;
  }
}
