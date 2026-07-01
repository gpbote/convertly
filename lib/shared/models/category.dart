import 'package:flutter/material.dart';

class Category {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget screen;

  const Category({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.screen,
  });
}
