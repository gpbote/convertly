import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final Widget screen;

  const Category({
    required this.title,
    required this.icon,
    required this.screen,
  });
}
