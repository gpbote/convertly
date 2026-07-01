class ConversionUnit {
  final String id;
  final String name;
  final String symbol;
  final double factor;

  const ConversionUnit({
    required this.id,
    required this.name,
    required this.symbol,
    required this.factor,
  });

  double toBase(double value) => value * factor;

  double fromBase(double value) => value / factor;
}
