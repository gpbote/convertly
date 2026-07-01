class TemperatureConverter {
  static const units = [
    'Celsius',
    'Fahrenheit',
    'Kelvin',
  ];

  static double convert({
    required String from,
    required String to,
    required double value,
  }) {
    double c;

    switch (from) {
      case 'Fahrenheit':
        c = (value - 32) * 5 / 9;
        break;
      case 'Kelvin':
        c = value - 273.15;
        break;
      default:
        c = value;
    }

    switch (to) {
      case 'Fahrenheit':
        return c * 9 / 5 + 32;
      case 'Kelvin':
        return c + 273.15;
      default:
        return c;
    }
  }
}
