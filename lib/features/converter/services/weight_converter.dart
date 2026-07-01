import '../models/conversion_unit.dart';

class WeightConverter {
  static const ConversionUnit kilogram = ConversionUnit(
    id: 'kg',
    name: 'Kilogram',
    symbol: 'kg',
    factor: 1.0,
  );

  static const ConversionUnit gram = ConversionUnit(
    id: 'g',
    name: 'Gram',
    symbol: 'g',
    factor: 0.001,
  );

  static const ConversionUnit milligram = ConversionUnit(
    id: 'mg',
    name: 'Milligram',
    symbol: 'mg',
    factor: 0.000001,
  );

  static const ConversionUnit microgram = ConversionUnit(
    id: 'mcg',
    name: 'Microgram',
    symbol: 'mcg',
    factor: 0.000000001,
  );

  static const ConversionUnit pound = ConversionUnit(
    id: 'lb',
    name: 'Pound',
    symbol: 'lb',
    factor: 0.45359237,
  );

  static const ConversionUnit ounce = ConversionUnit(
    id: 'oz',
    name: 'Ounce',
    symbol: 'oz',
    factor: 0.028349523125,
  );

  static const ConversionUnit stone = ConversionUnit(
    id: 'st',
    name: 'Stone',
    symbol: 'st',
    factor: 6.35029318,
  );

  static const List<ConversionUnit> units = [
    kilogram,
    gram,
    milligram,
    microgram,
    pound,
    ounce,
    stone,
  ];

  static double convert({
    required double value,
    required ConversionUnit from,
    required ConversionUnit to,
  }) {
    final base = from.toBase(value);
    return to.fromBase(base);
  }
}
