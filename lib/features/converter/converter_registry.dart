import 'package:flutter/material.dart';

import '../../shared/models/category.dart';
import 'screens/area_converter_screen.dart';
import 'screens/length_converter_screen.dart';
import 'screens/speed_converter_screen.dart';
import 'screens/temperature_converter_screen.dart';
import 'screens/time_converter_screen.dart';
import 'screens/volume_converter_screen.dart';
import 'screens/weight_converter_screen.dart';

class ConverterRegistry {
  static const List<Category> items = [
    Category(
      title: 'Weight',
      subtitle: 'kg, lb, oz',
      icon: Icons.scale,
      screen: WeightConverterScreen(),
    ),
    Category(
      title: 'Length',
      subtitle: 'm, km, ft',
      icon: Icons.straighten,
      screen: LengthConverterScreen(),
    ),
    Category(
      title: 'Temperature',
      subtitle: '°C, °F, K',
      icon: Icons.thermostat,
      screen: TemperatureConverterScreen(),
    ),
    Category(
      title: 'Volume',
      subtitle: 'L, mL, gal',
      icon: Icons.local_drink,
      screen: VolumeConverterScreen(),
    ),
    Category(
      title: 'Area',
      subtitle: 'm², ft²',
      icon: Icons.crop_square,
      screen: AreaConverterScreen(),
    ),
    Category(
      title: 'Speed',
      subtitle: 'km/h, mph',
      icon: Icons.speed,
      screen: SpeedConverterScreen(),
    ),
    Category(
      title: 'Time',
      subtitle: 'sec, min, hr',
      icon: Icons.schedule,
      screen: TimeConverterScreen(),
    ),
  ];
}
