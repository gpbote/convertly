import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;

  const Category({
    required this.name,
    required this.icon,
  });

  static const List<Category> categories = [
    Category(
      name: 'Length',
      icon: Icons.straighten,
    ),
    Category(
      name: 'Weight',
      icon: Icons.scale,
    ),
    Category(
      name: 'Temperature',
      icon: Icons.thermostat,
    ),
    Category(
      name: 'Volume',
      icon: Icons.local_drink,
    ),
    Category(
      name: 'Area',
      icon: Icons.crop_square,
    ),
    Category(
      name: 'Speed',
      icon: Icons.speed,
    ),
    Category(
      name: 'Time',
      icon: Icons.schedule,
    ),
    Category(
      name: 'Storage',
      icon: Icons.storage,
    ),
    Category(
      name: 'Energy',
      icon: Icons.bolt,
    ),
    Category(
      name: 'Power',
      icon: Icons.electric_bolt,
    ),
    Category(
      name: 'Pressure',
      icon: Icons.compress,
    ),
    Category(
      name: 'Cooking',
      icon: Icons.restaurant,
    ),
  ];
}